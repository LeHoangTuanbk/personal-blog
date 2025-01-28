import { Grid, GridItem, Container } from '@chakra-ui/react';

type HomepageLayoutProps = {
  sideBar: React.ReactNode;
  children: React.ReactNode;
};

export const HomepageLayout = ({ sideBar, children }: HomepageLayoutProps) => {
  return (
    <Container maxW="container.xl">
      <Grid templateColumns="repeat(3, 1fr)" gap={4}>
        <GridItem colSpan={1}>{sideBar}</GridItem>
        <GridItem colSpan={2}>{children}</GridItem>
      </Grid>
    </Container>
  );
};
