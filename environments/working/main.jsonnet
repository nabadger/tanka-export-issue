local clusterEnvConfig = { namespace: 'a' };
{
  local this = self,
  apiVersion: 'tanka.dev/v1alpha1',
  kind: 'Environment',
  metadata: {
    name: 'environments/my-app/local',
  },
  spec: {
    namespace: this.data.app._config.namespace,
  },
  data: {
    app: { _config:: { namespace: 'b' } } +
         {
           _config+:: clusterEnvConfig,
           app+: {
             _config+:: {
               image: 'localhost:5000/my-app',
             },
           },
         },
  },
}
