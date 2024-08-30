# KubeOpenAPI - JSON Schema

This is a very basic node based CLI for converting OpenAPI schema to JSON Schema Draft 4


```
Usage: kubeopenapi-jsonschema [options]

Options:
  -t, --type [type]           set type of input, can be either yaml or json (default: "yaml")
  -l, --location <location>   location of the schema
  -f, --filter [query]        give a query if a OpenAPISchema is nested
  --kubernetes                enable kubernetes specific filters (default: false)
  -o [output-format]          output format (default: "json")
  --o-filter [output-filter]  output filter query
  --silent                    skip output (default: false)
  --resolve [resolve-filter]  root of the OpenAPI spec to resolve the $ref. It is important to note that this jsonpath MUST evaluate to one object (default: "")
  -h, --help                  display help for command
```

## Example

Download the binaries from the github releases. Only linux-x64, darwin-x64 and windows-x64 binaries are released

```bash
kubeopenapi-jsonschema --location ./k8s.json -f '$.definitions' -t json --o-filter '$[0][?(@["x-kubernetes-group-version-kind"][0].kind=="Deployment")].properties.spec' --resolve "$"
```

The above will consume kubernetes open API schema and will produce schema for Kubernetes `Deployment`


```bash
kubeopenapi-jsonschema --location ./istio.yaml -t yaml --filter '$[?(@.kind=="CustomResourceDefinition")]..schema.openAPIV3Schema.properties.spec' --o-filter '$' 
```

The above will consume istio CRD manifest and will produce schema for all of the CustomResourceDefinition objects

<div>&nbsp;</div>

## Join the Community!

<a name="contributing"></a><a name="community"></a>
Our projects are community-built and welcome collaboration. 👍 Be sure to see the <a href="https://docs.google.com/document/d/17OPtDE_rdnPQxmk2Kauhm3GwXF1R5dZ3Cj8qZLKdo5E/edit">KhulnaSoft Community Welcome Guide</a> for a tour of resources available to you and jump into our <a href="http://slack.khulnasoft.com">Slack</a>!

<p style="clear:both;">
<a href ="https://khulnasoft.com/community/meshmates"><img alt="MeshMates" src=".github\readme\images\KhulnaSoft-MeshMentors.png" style="margin-right:10px; margin-bottom:7px;" width="28%" align="left" /></a>
<h3>Find your MeshMate</h3>

<p>MeshMates are experienced KhulnaSoft community members, who will help you learn your way around, discover live projects and expand your community network. 
Become a <b>Meshtee</b> today!</p>

Find out more on the <a href="https://khulnasoft.com/community">KhulnaSoft community</a>. <br />
<br /><br /><br /><br />
</p>

<div>&nbsp;</div>

<a href="https://slack.meshplay.khulnasoft.com">

<picture align="right">
  <source media="(prefers-color-scheme: dark)" srcset=".github/readme/images//slack-dark-128.png"  width="110px" align="right" style="margin-left:10px;margin-top:10px;">
  <source media="(prefers-color-scheme: light)" srcset=".github/readme/images//slack-128.png" width="110px" align="right" style="margin-left:10px;padding-top:5px;">
  <img alt="Shows an illustrated light mode meshplay logo in light color mode and a dark mode meshplay logo dark color mode." src=".github/readme/images//slack-128.png" width="110px" align="right" style="margin-left:10px;padding-top:13px;">
</picture>
</a>

<a href="https://meshplay.khulnasoft.com/community"><img alt="KhulnaSoft Cloud Native Community" src=".github/readme/images//community.svg" style="margin-right:8px;padding-top:5px;" width="140px" align="left" /></a>

<p>
✔️ <em><strong>Join</strong></em> any or all of the weekly meetings on <a href="https://calendar.google.com/calendar/b/1?cid=bGF5ZXI1LmlvX2VoMmFhOWRwZjFnNDBlbHZvYzc2MmpucGhzQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20">community calendar</a>.<br />
✔️ <em><strong>Watch</strong></em> community <a href="https://www.youtube.com/playlist?list=PL3A-A6hPO2IMPPqVjuzgqNU5xwnFFn3n0">meeting recordings</a>.<br />
✔️ <em><strong>Access</strong></em> the <a href="https://drive.google.com/drive/u/4/folders/0ABH8aabN4WAKUk9PVA">Community Drive</a> by completing a community <a href="https://khulnasoft.com/newcomer">Member Form</a>.<br />
</p>
<p align="center">
<i>Not sure where to start?</i> Grab an open issue with the <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Akhulnasoft+org%3Ameshplay+org%3Aservice-mesh-performance+org%3Aservice-mesh-patterns+label%3A%22help+wanted%22+">help-wanted label</a>.
</p>
