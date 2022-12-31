import Head from "next/head";
import styled from "styled-components";
import Layout from "../../components/layout/Layout";
const StyledContainer = styled.div``;
const index = () => {
  return (
    <Layout>
      <Head>
        <title>Dashboard</title>
      </Head>
      <StyledContainer></StyledContainer>
    </Layout>
  );
};

export default index;
