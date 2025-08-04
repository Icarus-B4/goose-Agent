export type EnvironmentVariable = {
  name: string;
  description: string;
  required: boolean;
};

export type Extension = {
  name: string;
  command?: string;
  url?: string;
  is_builtin: boolean;
  link?: string;
  installation_notes?: string;
  environmentVariables?: EnvironmentVariable[];
};

export type Category = {
  id: string;
  name: string;
  description?: string;
};

export type Prompt = {
  id: string;
  title: string;
  description: string;
  example_prompt: string;
  example_result?: string;
  extensions: Extension[];
  category?: string;
  job?: string;
};