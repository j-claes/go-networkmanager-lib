
################################################################################
### GO                                                                       ###
################################################################################
GO ?= go

################################################################################

COMMIT_ID = $(shell git describe --dirty --broken)

################################################################################
### TESTS                                                                    ###
################################################################################

tests: run-tests 

run-check:
	$(GO) vet ./...
	staticcheck ./...

################################################################################
### ALL                                                                      ###
################################################################################

all: amd64

################################################################################
### INCLUDES                                                                 ###
################################################################################

include build/amd64.mk build/test.mk