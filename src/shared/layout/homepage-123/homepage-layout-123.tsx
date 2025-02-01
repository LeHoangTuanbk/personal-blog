import { Grid, GridItem, Box } from '@chakra-ui/react';

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
          lg: '270px 1fr',
        }}
        gap={{ base: 4, lg: 10 }}
      >
        <GridItem>{sideBar}</GridItem>

        <GridItem>{children}</GridItem>
      </Grid>
    </Box>
  );
};
