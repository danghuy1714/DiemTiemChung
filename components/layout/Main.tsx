import { ReactNode } from "react";
import styled from "styled-components";

const StyledMain = styled.div`
  background: lightblue;
  height: 100%;
  flex: 1;
`;
const Main = ({ children }: { children: ReactNode }) => {
  return <StyledMain>{children}</StyledMain>;
};

export default Main;
