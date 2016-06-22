[![Build Status](https://travis-ci.org/sul-dlss/was-dissemination.svg?branch=master)](https://travis-ci.org/sul-dlss/was-dissemination) [![Coverage Status](https://coveralls.io/repos/sul-dlss/was-dissemination/badge.png)](https://coveralls.io/r/sul-dlss/was-dissemination) [![Dependency Status](https://gemnasium.com/sul-dlss/was-dissemination.svg)](https://gemnasium.com/sul-dlss/was-dissemination)
 
# Was-Dissemination

A robot suite that routes web archiving items to the `wasSeedDisseminationWF` or `wasCrawlDisseminationWF`. There is only a single step in this robot suite (`start-special-dissemination`). See https://github.com/sul-dlss/was-dissemination/blob/master/robots/start_special_dissemination.rb#L17-L25 for the route.

Note that the `wasDisseminationWF` itself is fired off by the `accessionWF` by using the custom `<dissemination><workflow>` tag in the APO. For example, if the APO has the following, it'll fire off `wasDisseminationWF`:

```
<administrativeMetadata>
...
  <dissemination>
    <workflow id="wasDisseminationWF"/>
  </dissemination>
</administrativeMetadata>
```

# Documentation

Check the [Wiki](https://github.com/sul-dlss/robot-master/wiki) in the robot-master repo.
