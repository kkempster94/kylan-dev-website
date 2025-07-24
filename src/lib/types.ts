export interface Service {
  icon: string;
  title: string;
  description: string;
  features: string[];
}

export interface ContactMethod {
  icon: string;
  title: string;
  description: string;
  href: string;
  external?: boolean;
}

export interface ContactFormData {
  name: string;
  email: string;
  message: string;
}

export interface NavLink {
  href: string;
  label: string;
}

export interface Stat {
  number: string;
  label: string;
}