const Env = {
  Local: 'local',
  Develop: 'dev',
  Production: 'prod',
} as const;

type Env = (typeof Env)[keyof typeof Env];

const parseEnvDef = (envDef: string): Env => {
  if (envDef === Env.Local) return Env.Local;
  if (envDef === Env.Develop) return Env.Develop;
  if (envDef === Env.Production) return Env.Production;
  throw new Error(`Invalid envDef: ${envDef}`);
};

const validateEnv = (processEnvKey: string): string => {
  const envKey = import.meta.env[processEnvKey];
  if (!envKey) throw new Error(`${processEnvKey} is not defined`);

  return envKey;
};

interface IConfig {
  readonly env: Env;
  readonly projectName: string;
  readonly supabaseUrl: string;
  readonly supabaseAnonKey: string;
  readonly supabaseBucketName: string;
}

class Config implements IConfig {
  private static _instance: Config;

  public readonly env: Env;
  public readonly projectName: string;
  public readonly supabaseUrl: string;
  public readonly supabaseAnonKey: string;
  public readonly supabaseBucketName: string;
  private constructor() {
    const parsedEnvDef = parseEnvDef(validateEnv('VITE_ENV'));

    this.env = parsedEnvDef;
    this.projectName = validateEnv('VITE_PROJECT_NAME');
    this.supabaseUrl = validateEnv('VITE_SUPABASE_URL');
    this.supabaseAnonKey = validateEnv('VITE_SUPABASE_ANON_KEY');
    this.supabaseBucketName = validateEnv('VITE_SUPABASE_BUCKET_NAME');
  }

  public static getInstance(): IConfig {
    if (!Config._instance) Config._instance = new Config();
    return Config._instance;
  }
}

export const config = Config.getInstance();
