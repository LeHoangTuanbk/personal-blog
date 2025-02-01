import { Grid, GridItem, Show, Divider, Box } from '@chakra-ui/react';

type HomepageLayoutProps = {
  sideBar: React.ReactNode;
  children: React.ReactNode;
};

export const HomepageLayout = ({ sideBar, children }: HomepageLayoutProps) => {
  return (
    <Box maxW="container.xl">
      <Grid
        templateColumns={{
          base: '1fr',
          lg: '250px 1fr',
        }}
        gap={10}
      >
        <GridItem>{sideBar}</GridItem>
        <Show below="lg">
          <Divider
            orientation="horizontal"
            borderWidth="1px"
            borderColor="gray.800"
          />
        </Show>
        <GridItem>{children}</GridItem>
      </Grid>
    </Box>
  );
};
