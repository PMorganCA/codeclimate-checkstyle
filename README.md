# codeclimate-checkstyle
A code climate engine for running checkstyle on your java projects.

### Sample .codeclimate.yml configuration
```yaml
engines:
  checkstyle:
    enabled: true
    config: 'config/checkstyle/checkstyle.xml'
```

By default the engine runs the [google checker](https://github.com/sivakumar-kailasam/codeclimate-checkstyle/blob/master/config/google_checkstyle.xml) against your code if the config property is not defined
