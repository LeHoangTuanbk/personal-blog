import { Grid, GridItem, Container, Show, Divider } from '@chakra-ui/react';

type HomepageLayoutProps = {
  sideBar: React.ReactNode;
  children: React.ReactNode;
};

export const HomepageLayout = ({ sideBar, children }: HomepageLayoutProps) => {
  return (
    <Container maxW="container.xl">
      <Grid
        templateColumns={{
          base: '1fr',
          lg: 'repeat(24, 1fr)',
        }}
        gap={4}
      >
        <GridItem
          colSpan={{
            base: 'auto',
            lg: 2,
          }}
        >
          {sideBar}
        </GridItem>
        <Show below="lg">
          <Divider
            orientation="horizontal"
            borderWidth="1px"
            borderColor="gray.800"
          />
        </Show>
        <GridItem
          colSpan={{
            base: 'auto',
            lg: 20,
          }}
        >
          {children}
        </GridItem>
      </Grid>
    </Container>
  );
};
