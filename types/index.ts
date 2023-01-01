import { SetStateAction } from "react";
import { Dispatch } from "react";

export type SetStateType<S, T> = {
  S: Dispatch<SetStateAction<T>>;
};
