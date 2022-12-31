import { ReactNode } from "react";
import styled from "styled-components";
import Header from "./Header";
import Main from "./Main";
import Sidebar from "./Sidebar";

const StyledLayout = styled.div`
  display: flex;
  width: 100vw;
  height: 100vh;
  overflow: hidden;
`;
const Layout = ({ children }: { children: ReactNode }) => {
  return (
    <StyledLayout>
      <>
        <Sidebar />
        <Main>
          <>
            <Header />
            <div className="main-container">{children}</div>
          </>
        </Main>
      </>
    </StyledLayout>
  );
};

export default Layout;
