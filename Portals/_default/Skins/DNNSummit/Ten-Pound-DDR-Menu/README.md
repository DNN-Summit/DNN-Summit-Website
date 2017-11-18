# Ten Pound DDR Menu

[DDR Menu User Guide](http://www.dnnsoftware.com/wiki/ddrmenu-user-guide)

[DDR Menu Reference Guide](http://www.dnnsoftware.com/wiki/ddrmenu-reference-guide)

## How to set options on a <ddr:MENU> skin object

Use the following format:

```asp
<ddr:MENU MenuStyle="..." NodeSelector="..." IncludeNodes="..." ExcludeNodes="..." IncludeHidden="..." NodeXmlPath="..." NodeManipulator="..." runat="server"> 
  <TemplateArguments> 
    <ddr:TemplateArgument Name="..." Value="..." />
  </TemplateArguments>
  <ClientOptions> 
    <ddr:ClientString Name="..." Value="..." />
    <ddr:ClientNumber Name="..." Value="..." />
    <ddr:ClientBoolean Name="..." Value="true|false" />
  </ClientOptions>
</ddr:MENU>
```

## How to set options on a menu added as a module

Module options are set through the standard module settings. Template arguments and client options should be supplied as one or more lines in Setting=Value format.

## Available Template Arguments

This is a list of defined template arguments and their default values.

| Attribute				| Default Value		| Type		| Description |
|-----------------------|-------------------|-----------|-------------|
| mobile				| false				| boolean	| If set to true, a button will be displayed to toggle the menu. Additionally the script will function differently.
| mobileSeperateButton	| 					| string	| Define a class or id to use as the selector for an external button that will be used to toggle the mobile menu.
| mobileButtonText		| Menu				| string	| The text that will be displayed in the generated mobile toggle button.
| mobileButtonName		| -button			| string	|
| mobileSubToggleClass	| toggle			| string	|
| mobileSubToggleText	| >					| string	|
| clearClass			| clearfix			| string	|
| clearRoot				| true				| boolean	|
| clearSub				| true				| boolean	|
| showDesc				| false				| boolean	| If set to true, the page description will be displayed, if available.
| showKeywords			| false				| boolean	| If set to true, the page keywords will be displayed, if available.
| showIcon				| false				| boolean	| If set to true, the page icon will be displayed, if available.
| menuId				| 					| string	| Set the id for the generated menu.
| menuClass				| ten-pound-menu	| string	| Set the class for the generated menu.
| subClass				| sub				| string	|
| showSubIndicator		| false				| boolean	|
| subIndicatorClass		| indicator			| string	|
| itemClass				| item				| string	| The class set for all menu items.
| rootClass				| root				| string	| The class set for all menu **root level** items.
| pageIDClass			| page-				| string	| The class prefix for all menu items to define it's page id since class names can't start with an integer.
| hasChildClass			| has-child			| string	| The class set for all menu items that contain children pages.
| numClass				| num-				| string	|
| disabledClass			| disabled			| string	| The class set for all menu items that are disabled.
| disabledSelected		| true				| boolean	|
| firstClass			| first				| string	| The class set to the first menu item.
| lastClass				| last				| string	| The class set to the last menu item.
| onlyClass				| only				| string	| The class set to menu items that have no other siblings.
| bcClass				| bc				| string	| 
| selClass				| selected			| string	| The class set to a menu item that is currently selected.
| textClass				| text				| string	| The class set to the wrapper of the menu item text for all menu items.
| iconClass				| icon				| string	| The class set to the wrapper of the menu item icon for all menu items.
| descClass				| desc				| string	| The class set to the wrapper of the menu item description for all menu items.
| keywordsClass			| keywords			| string	|
| depthClass			| depth-			| string	|
| useScript				| true				| boolean	|

## Available Client Options

This is a list of defined client options and their default values.

| Attribute				| Default Value		| Type		| Description |
|-----------------------|-------------------|-----------|-------------|
| container				| window			| string	|
| subTrigger			| hover				| string	| This is the action the triggers the sub navigation. It can be set to 'click', otherwise it will default to hover.
| subTriggerClass		| hover				| string	| This is the class that is applied when the sub navigation is triggered.
| animateIn				| slideDown			| string	| The animation that is used to display the sub navigation. Available predifined options are "fade" or "slideDown". More advanced is to provide a obejct with css attribute value pairs. If none of these are used, sub navigation will simple show and hide on toggle.
| animateOut			| fade				| string	| Same as "animateIn" except available predifined option "slideDown" is replaced with "slideUp".
| showSpeed				| 200				| number	| The speed at which the sub navigation animation will run when displaying.
| hideSpeed				| 100				| number	| The speed at which the sub navigation animation will run when hiding.
| confine				| false				| boolean	|
| evenRoot				| false				| boolean	|
| pushContent			| false				| boolean	| If set to true, the sub navigation will push the content below it down, instead of overlapping it.
| pushContentSelector	| 					| string	|
| mobileContainer		| 					| string	|
| mobileOpenClass		| open				| string	|
| mobileOpeningClass	| opening			| string	|
| mobileClosedClass		| closed			| string	|
| mobileClosingClass	| closing			| string	|
| mobileShowSpeed		| 200				| number	|
| mobileHideSpeed		| 100				| number	|
| mobileSubMultiOpen	| false				| boolean	|