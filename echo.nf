#!/usr/bin/env nextflow

process echoSomething {
    output:
    stdout out

    """
    echo Hello world!
    """
}

out.view { "result: $it" }
