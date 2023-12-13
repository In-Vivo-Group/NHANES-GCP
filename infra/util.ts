import { ProjectService } from "@cdktf/provider-google/lib/project-service";
import { GoogleProvider } from "@cdktf/provider-google/lib/provider";
import { Construct } from "constructs";

export const serviceApis = <T extends string>(
  _this: Construct,
  provider: GoogleProvider,
  services: [T, string][]
): Record<T, ProjectService> =>
  // @ts-ignore
  Object.fromEntries(
    services.map(([name, api]) => [
      name,
      new ProjectService(_this, name, {
        project: provider.project!,
        service: api,
        disableOnDestroy: false,
      }),
    ])
  );
