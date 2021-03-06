#!/usr/bin/env bash.origin.script

depend {
    "website": {
        "@.#s1": {
            "readme": "$__DIRNAME__/README.md",
            "variables": {
                "PACKAGE_GITHUB_URI": "github.com/gi0-cadorn-org/component",
                "PACKAGE_WEBSITE_SOURCE_URI": "github.com/gi0-cadorn-org/component/tree/master/main.sh",
                "PACKAGE_WEBSITE_URI": "gi0-cadorn-org.github.io/component/",
                "PACKAGE_YEAR_CREATED": "2017",
                "PACKAGE_LICENSE_ALIAS": "MPL"
            }
        }
    }
}

BO_parse_args "ARGS" "$@"

if [ "$ARGS_1" == "publish" ]; then

    # TODO: Add option to track files and only publish if changed.
    CALL_website publish ${*:2}

elif [ "$ARGS_1" == "run" ]; then

    CALL_website run ${*:2}

elif [ "$ARGS_1" == "build" ]; then

    CALL_website build ${*:2}

fi
