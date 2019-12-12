.class public Lcom/caverock/androidsvg/SVGParser;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$TextScanner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I = null

.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final TAG_A:Ljava/lang/String; = "a"

.field private static final TAG_CIRCLE:Ljava/lang/String; = "circle"

.field private static final TAG_CLIPPATH:Ljava/lang/String; = "clipPath"

.field private static final TAG_DEFS:Ljava/lang/String; = "defs"

.field private static final TAG_DESC:Ljava/lang/String; = "desc"

.field private static final TAG_ELLIPSE:Ljava/lang/String; = "ellipse"

.field private static final TAG_G:Ljava/lang/String; = "g"

.field private static final TAG_IMAGE:Ljava/lang/String; = "image"

.field private static final TAG_LINE:Ljava/lang/String; = "line"

.field private static final TAG_LINEARGRADIENT:Ljava/lang/String; = "linearGradient"

.field private static final TAG_MARKER:Ljava/lang/String; = "marker"

.field private static final TAG_MASK:Ljava/lang/String; = "mask"

.field private static final TAG_PATH:Ljava/lang/String; = "path"

.field private static final TAG_PATTERN:Ljava/lang/String; = "pattern"

.field private static final TAG_POLYGON:Ljava/lang/String; = "polygon"

.field private static final TAG_POLYLINE:Ljava/lang/String; = "polyline"

.field private static final TAG_RADIALGRADIENT:Ljava/lang/String; = "radialGradient"

.field private static final TAG_RECT:Ljava/lang/String; = "rect"

.field private static final TAG_SOLIDCOLOR:Ljava/lang/String; = "solidColor"

.field private static final TAG_STOP:Ljava/lang/String; = "stop"

.field private static final TAG_STYLE:Ljava/lang/String; = "style"

.field private static final TAG_SVG:Ljava/lang/String; = "svg"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG_SYMBOL:Ljava/lang/String; = "symbol"

.field private static final TAG_TEXT:Ljava/lang/String; = "text"

.field private static final TAG_TEXTPATH:Ljava/lang/String; = "textPath"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"

.field private static final TAG_TREF:Ljava/lang/String; = "tref"

.field private static final TAG_TSPAN:Ljava/lang/String; = "tspan"

.field private static final TAG_USE:Ljava/lang/String; = "use"

.field private static final TAG_VIEW:Ljava/lang/String; = "view"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field private static aspectRatioKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private static colourKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fontSizeKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field private static fontStyleKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static fontWeightKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Ljava/lang/String;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private supportedFormats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I
    .locals 5

    .prologue
    .line 69
    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x5c

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    :try_start_2
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    :try_start_3
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object v1, v0

    :try_start_4
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    move-object v1, v0

    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    move-object v1, v0

    :try_start_6
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    move-object v1, v0

    :try_start_7
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    move-object v1, v0

    :try_start_8
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    move-object v1, v0

    :try_start_9
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xe

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    move-object v1, v0

    :try_start_a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_b
    move-object v1, v0

    :try_start_b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xf

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_c
    move-object v1, v0

    :try_start_c
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_d
    move-object v1, v0

    :try_start_d
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :goto_e
    move-object v1, v0

    :try_start_e
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x10

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_f
    move-object v1, v0

    :try_start_f
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x12

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_10
    move-object v1, v0

    :try_start_10
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x11

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :goto_11
    move-object v1, v0

    :try_start_11
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x13

    aput v3, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_12
    move-object v1, v0

    :try_start_12
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x14

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_13
    move-object v1, v0

    :try_start_13
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x15

    aput v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :goto_14
    move-object v1, v0

    :try_start_14
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x17

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_15
    move-object v1, v0

    :try_start_15
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x16

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :goto_16
    move-object v1, v0

    :try_start_16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :goto_17
    move-object v1, v0

    :try_start_17
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0xd

    aput v3, v1, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :goto_18
    move-object v1, v0

    :try_start_18
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x18

    aput v3, v1, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :goto_19
    move-object v1, v0

    :try_start_19
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x19

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :goto_1a
    move-object v1, v0

    :try_start_1a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1a

    aput v3, v1, v2
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :goto_1b
    move-object v1, v0

    :try_start_1b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1b

    aput v3, v1, v2
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1c
    move-object v1, v0

    :try_start_1c
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->id:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1c

    aput v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :goto_1d
    move-object v1, v0

    :try_start_1d
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1d

    aput v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1e
    move-object v1, v0

    :try_start_1e
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x21

    aput v3, v1, v2
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :goto_1f
    move-object v1, v0

    :try_start_1f
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x22

    aput v3, v1, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :goto_20
    move-object v1, v0

    :try_start_20
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x23

    aput v3, v1, v2
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :goto_21
    move-object v1, v0

    :try_start_21
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x20

    aput v3, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :goto_22
    move-object v1, v0

    :try_start_22
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1f

    aput v3, v1, v2
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :goto_23
    move-object v1, v0

    :try_start_23
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x1e

    aput v3, v1, v2
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :goto_24
    move-object v1, v0

    :try_start_24
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x24

    aput v3, v1, v2
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :goto_25
    move-object v1, v0

    :try_start_25
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x25

    aput v3, v1, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :goto_26
    move-object v1, v0

    :try_start_26
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x26

    aput v3, v1, v2
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :goto_27
    move-object v1, v0

    :try_start_27
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x27

    aput v3, v1, v2
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :goto_28
    move-object v1, v0

    :try_start_28
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x28

    aput v3, v1, v2
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :goto_29
    move-object v1, v0

    :try_start_29
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x29

    aput v3, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :goto_2a
    move-object v1, v0

    :try_start_2a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2a

    aput v3, v1, v2
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :goto_2b
    move-object v1, v0

    :try_start_2b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2b

    aput v3, v1, v2
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :goto_2c
    move-object v1, v0

    :try_start_2c
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2c

    aput v3, v1, v2
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :goto_2d
    move-object v1, v0

    :try_start_2d
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2d

    aput v3, v1, v2
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :goto_2e
    move-object v1, v0

    :try_start_2e
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2e

    aput v3, v1, v2
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :goto_2f
    move-object v1, v0

    :try_start_2f
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x2f

    aput v3, v1, v2
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :goto_30
    move-object v1, v0

    :try_start_30
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x30

    aput v3, v1, v2
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :goto_31
    move-object v1, v0

    :try_start_31
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x31

    aput v3, v1, v2
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :goto_32
    move-object v1, v0

    :try_start_32
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x32

    aput v3, v1, v2
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :goto_33
    move-object v1, v0

    :try_start_33
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x33

    aput v3, v1, v2
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :goto_34
    move-object v1, v0

    :try_start_34
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x34

    aput v3, v1, v2
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :goto_35
    move-object v1, v0

    :try_start_35
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x36

    aput v3, v1, v2
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :goto_36
    move-object v1, v0

    :try_start_36
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x35

    aput v3, v1, v2
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :goto_37
    move-object v1, v0

    :try_start_37
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x38

    aput v3, v1, v2
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :goto_38
    move-object v1, v0

    :try_start_38
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x37

    aput v3, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :goto_39
    move-object v1, v0

    :try_start_39
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x39

    aput v3, v1, v2
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :goto_3a
    move-object v1, v0

    :try_start_3a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3a

    aput v3, v1, v2
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :goto_3b
    move-object v1, v0

    :try_start_3b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3b

    aput v3, v1, v2
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :goto_3c
    move-object v1, v0

    :try_start_3c
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3c

    aput v3, v1, v2
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :goto_3d
    move-object v1, v0

    :try_start_3d
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3d

    aput v3, v1, v2
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :goto_3e
    move-object v1, v0

    :try_start_3e
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3e

    aput v3, v1, v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :goto_3f
    move-object v1, v0

    :try_start_3f
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x3f

    aput v3, v1, v2
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :goto_40
    move-object v1, v0

    :try_start_40
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x40

    aput v3, v1, v2
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :goto_41
    move-object v1, v0

    :try_start_41
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x41

    aput v3, v1, v2
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :goto_42
    move-object v1, v0

    :try_start_42
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x42

    aput v3, v1, v2
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :goto_43
    move-object v1, v0

    :try_start_43
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x43

    aput v3, v1, v2
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :goto_44
    move-object v1, v0

    :try_start_44
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x44

    aput v3, v1, v2
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :goto_45
    move-object v1, v0

    :try_start_45
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x45

    aput v3, v1, v2
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :goto_46
    move-object v1, v0

    :try_start_46
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x46

    aput v3, v1, v2
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :goto_47
    move-object v1, v0

    :try_start_47
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x47

    aput v3, v1, v2
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :goto_48
    move-object v1, v0

    :try_start_48
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x48

    aput v3, v1, v2
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :goto_49
    move-object v1, v0

    :try_start_49
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x49

    aput v3, v1, v2
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :goto_4a
    move-object v1, v0

    :try_start_4a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4a

    aput v3, v1, v2
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :goto_4b
    move-object v1, v0

    :try_start_4b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4b

    aput v3, v1, v2
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :goto_4c
    move-object v1, v0

    :try_start_4c
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4c

    aput v3, v1, v2
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :goto_4d
    move-object v1, v0

    :try_start_4d
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4d

    aput v3, v1, v2
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :goto_4e
    move-object v1, v0

    :try_start_4e
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4e

    aput v3, v1, v2
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :goto_4f
    move-object v1, v0

    :try_start_4f
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x4f

    aput v3, v1, v2
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :goto_50
    move-object v1, v0

    :try_start_50
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x50

    aput v3, v1, v2
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :goto_51
    move-object v1, v0

    :try_start_51
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x51

    aput v3, v1, v2
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :goto_52
    move-object v1, v0

    :try_start_52
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x59

    aput v3, v1, v2
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :goto_53
    move-object v1, v0

    :try_start_53
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x5a

    aput v3, v1, v2
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :goto_54
    move-object v1, v0

    :try_start_54
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x5b

    aput v3, v1, v2
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :goto_55
    move-object v1, v0

    :try_start_55
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x52

    aput v3, v1, v2
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :goto_56
    move-object v1, v0

    :try_start_56
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x53

    aput v3, v1, v2
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :goto_57
    move-object v1, v0

    :try_start_57
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x55

    aput v3, v1, v2
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :goto_58
    move-object v1, v0

    :try_start_58
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x57

    aput v3, v1, v2
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :goto_59
    move-object v1, v0

    :try_start_59
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x54

    aput v3, v1, v2
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :goto_5a
    move-object v1, v0

    :try_start_5a
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x56

    aput v3, v1, v2
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :goto_5b
    move-object v1, v0

    :try_start_5b
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    const/16 v3, 0x58

    aput v3, v1, v2
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :goto_5c
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto/16 :goto_6

    :catch_6
    move-exception v1

    goto/16 :goto_7

    :catch_7
    move-exception v1

    goto/16 :goto_8

    :catch_8
    move-exception v1

    goto/16 :goto_9

    :catch_9
    move-exception v1

    goto/16 :goto_a

    :catch_a
    move-exception v1

    goto/16 :goto_b

    :catch_b
    move-exception v1

    goto/16 :goto_c

    :catch_c
    move-exception v1

    goto/16 :goto_d

    :catch_d
    move-exception v1

    goto/16 :goto_e

    :catch_e
    move-exception v1

    goto/16 :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_10

    :catch_10
    move-exception v1

    goto/16 :goto_11

    :catch_11
    move-exception v1

    goto/16 :goto_12

    :catch_12
    move-exception v1

    goto/16 :goto_13

    :catch_13
    move-exception v1

    goto/16 :goto_14

    :catch_14
    move-exception v1

    goto/16 :goto_15

    :catch_15
    move-exception v1

    goto/16 :goto_16

    :catch_16
    move-exception v1

    goto/16 :goto_17

    :catch_17
    move-exception v1

    goto/16 :goto_18

    :catch_18
    move-exception v1

    goto/16 :goto_19

    :catch_19
    move-exception v1

    goto/16 :goto_1a

    :catch_1a
    move-exception v1

    goto/16 :goto_1b

    :catch_1b
    move-exception v1

    goto/16 :goto_1c

    :catch_1c
    move-exception v1

    goto/16 :goto_1d

    :catch_1d
    move-exception v1

    goto/16 :goto_1e

    :catch_1e
    move-exception v1

    goto/16 :goto_1f

    :catch_1f
    move-exception v1

    goto/16 :goto_20

    :catch_20
    move-exception v1

    goto/16 :goto_21

    :catch_21
    move-exception v1

    goto/16 :goto_22

    :catch_22
    move-exception v1

    goto/16 :goto_23

    :catch_23
    move-exception v1

    goto/16 :goto_24

    :catch_24
    move-exception v1

    goto/16 :goto_25

    :catch_25
    move-exception v1

    goto/16 :goto_26

    :catch_26
    move-exception v1

    goto/16 :goto_27

    :catch_27
    move-exception v1

    goto/16 :goto_28

    :catch_28
    move-exception v1

    goto/16 :goto_29

    :catch_29
    move-exception v1

    goto/16 :goto_2a

    :catch_2a
    move-exception v1

    goto/16 :goto_2b

    :catch_2b
    move-exception v1

    goto/16 :goto_2c

    :catch_2c
    move-exception v1

    goto/16 :goto_2d

    :catch_2d
    move-exception v1

    goto/16 :goto_2e

    :catch_2e
    move-exception v1

    goto/16 :goto_2f

    :catch_2f
    move-exception v1

    goto/16 :goto_30

    :catch_30
    move-exception v1

    goto/16 :goto_31

    :catch_31
    move-exception v1

    goto/16 :goto_32

    :catch_32
    move-exception v1

    goto/16 :goto_33

    :catch_33
    move-exception v1

    goto/16 :goto_34

    :catch_34
    move-exception v1

    goto/16 :goto_35

    :catch_35
    move-exception v1

    goto/16 :goto_36

    :catch_36
    move-exception v1

    goto/16 :goto_37

    :catch_37
    move-exception v1

    goto/16 :goto_38

    :catch_38
    move-exception v1

    goto/16 :goto_39

    :catch_39
    move-exception v1

    goto/16 :goto_3a

    :catch_3a
    move-exception v1

    goto/16 :goto_3b

    :catch_3b
    move-exception v1

    goto/16 :goto_3c

    :catch_3c
    move-exception v1

    goto/16 :goto_3d

    :catch_3d
    move-exception v1

    goto/16 :goto_3e

    :catch_3e
    move-exception v1

    goto/16 :goto_3f

    :catch_3f
    move-exception v1

    goto/16 :goto_40

    :catch_40
    move-exception v1

    goto/16 :goto_41

    :catch_41
    move-exception v1

    goto/16 :goto_42

    :catch_42
    move-exception v1

    goto/16 :goto_43

    :catch_43
    move-exception v1

    goto/16 :goto_44

    :catch_44
    move-exception v1

    goto/16 :goto_45

    :catch_45
    move-exception v1

    goto/16 :goto_46

    :catch_46
    move-exception v1

    goto/16 :goto_47

    :catch_47
    move-exception v1

    goto/16 :goto_48

    :catch_48
    move-exception v1

    goto/16 :goto_49

    :catch_49
    move-exception v1

    goto/16 :goto_4a

    :catch_4a
    move-exception v1

    goto/16 :goto_4b

    :catch_4b
    move-exception v1

    goto/16 :goto_4c

    :catch_4c
    move-exception v1

    goto/16 :goto_4d

    :catch_4d
    move-exception v1

    goto/16 :goto_4e

    :catch_4e
    move-exception v1

    goto/16 :goto_4f

    :catch_4f
    move-exception v1

    goto/16 :goto_50

    :catch_50
    move-exception v1

    goto/16 :goto_51

    :catch_51
    move-exception v1

    goto/16 :goto_52

    :catch_52
    move-exception v1

    goto/16 :goto_53

    :catch_53
    move-exception v1

    goto/16 :goto_54

    :catch_54
    move-exception v1

    goto/16 :goto_55

    :catch_55
    move-exception v1

    goto/16 :goto_56

    :catch_56
    move-exception v1

    goto/16 :goto_57

    :catch_57
    move-exception v1

    goto/16 :goto_58

    :catch_58
    move-exception v1

    goto/16 :goto_59

    :catch_59
    move-exception v1

    goto/16 :goto_5a

    :catch_5a
    move-exception v1

    goto/16 :goto_5b

    :catch_5b
    move-exception v1

    goto/16 :goto_5c
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 292
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    .line 297
    new-instance v0, Ljava/util/HashSet;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    .line 300
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aliceblue"

    const v2, 0xf0f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "antiquewhite"

    const v2, 0xfaebd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aquamarine"

    const v2, 0x7fffd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "azure"

    const v2, 0xf0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "beige"

    const v2, 0xf5f5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "bisque"

    const v2, 0xffe4c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blanchedalmond"

    const v2, 0xffebcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blueviolet"

    const v2, 0x8a2be2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "brown"

    const v2, 0xa52a2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "burlywood"

    const v2, 0xdeb887

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cadetblue"

    const v2, 0x5f9ea0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chartreuse"

    const v2, 0x7fff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chocolate"

    const v2, 0xd2691e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "coral"

    const v2, 0xff7f50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornflowerblue"

    const v2, 0x6495ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornsilk"

    const v2, 0xfff8dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "crimson"

    const v2, 0xdc143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cyan"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkblue"

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkcyan"

    const v2, 0x8b8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgoldenrod"

    const v2, 0xb8860b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgray"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgreen"

    const/16 v2, 0x6400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgrey"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkkhaki"

    const v2, 0xbdb76b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkmagenta"

    const v2, 0x8b008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkolivegreen"

    const v2, 0x556b2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorange"

    const v2, 0xff8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorchid"

    const v2, 0x9932cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkred"

    const/high16 v2, 0x8b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darksalmon"

    const v2, 0xe9967a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkseagreen"

    const v2, 0x8fbc8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslateblue"

    const v2, 0x483d8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategray"

    const v2, 0x2f4f4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategrey"

    const v2, 0x2f4f4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkturquoise"

    const v2, 0xced1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkviolet"

    const v2, 0x9400d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deeppink"

    const v2, 0xff1493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deepskyblue"

    const v2, 0xbfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgray"

    const v2, 0x696969

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgrey"

    const v2, 0x696969

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dodgerblue"

    const v2, 0x1e90ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "firebrick"

    const v2, 0xb22222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "floralwhite"

    const v2, 0xfffaf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "forestgreen"

    const v2, 0x228b22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gainsboro"

    const v2, 0xdcdcdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ghostwhite"

    const v2, 0xf8f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gold"

    const v2, 0xffd700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "goldenrod"

    const v2, 0xdaa520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gray"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "greenyellow"

    const v2, 0xadff2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "honeydew"

    const v2, 0xf0fff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "hotpink"

    const v2, 0xff69b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indianred"

    const v2, 0xcd5c5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indigo"

    const v2, 0x4b0082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ivory"

    const v2, 0xfffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "khaki"

    const v2, 0xf0e68c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavender"

    const v2, 0xe6e6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavenderblush"

    const v2, 0xfff0f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lawngreen"

    const v2, 0x7cfc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lemonchiffon"

    const v2, 0xfffacd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightblue"

    const v2, 0xadd8e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcoral"

    const v2, 0xf08080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcyan"

    const v2, 0xe0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgoldenrodyellow"

    const v2, 0xfafad2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgray"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgreen"

    const v2, 0x90ee90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgrey"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightpink"

    const v2, 0xffb6c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsalmon"

    const v2, 0xffa07a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightseagreen"

    const v2, 0x20b2aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightskyblue"

    const v2, 0x87cefa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategray"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategrey"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsteelblue"

    const v2, 0xb0c4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightyellow"

    const v2, 0xffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 383
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "limegreen"

    const v2, 0x32cd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "linen"

    const v2, 0xfaf0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "magenta"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumaquamarine"

    const v2, 0x66cdaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumblue"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumorchid"

    const v2, 0xba55d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumpurple"

    const v2, 0x9370db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumseagreen"

    const v2, 0x3cb371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumslateblue"

    const v2, 0x7b68ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumspringgreen"

    const v2, 0xfa9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumturquoise"

    const v2, 0x48d1cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 395
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumvioletred"

    const v2, 0xc71585

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "midnightblue"

    const v2, 0x191970

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mintcream"

    const v2, 0xf5fffa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mistyrose"

    const v2, 0xffe4e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "moccasin"

    const v2, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navajowhite"

    const v2, 0xffdead

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "oldlace"

    const v2, 0xfdf5e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olivedrab"

    const v2, 0x6b8e23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 405
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orange"

    const v2, 0xffa500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orangered"

    const v2, 0xff4500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orchid"

    const v2, 0xda70d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegoldenrod"

    const v2, 0xeee8aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegreen"

    const v2, 0x98fb98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "paleturquoise"

    const v2, 0xafeeee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 411
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palevioletred"

    const v2, 0xdb7093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "papayawhip"

    const v2, 0xffefd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 413
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peachpuff"

    const v2, 0xffdab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peru"

    const v2, 0xcd853f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "pink"

    const v2, 0xffc0cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "plum"

    const v2, 0xdda0dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "powderblue"

    const v2, 0xb0e0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 418
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "rosybrown"

    const v2, 0xbc8f8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 421
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "royalblue"

    const v2, 0x4169e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "saddlebrown"

    const v2, 0x8b4513

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "salmon"

    const v2, 0xfa8072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 424
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sandybrown"

    const v2, 0xf4a460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seagreen"

    const v2, 0x2e8b57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seashell"

    const v2, 0xfff5ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 427
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sienna"

    const v2, 0xa0522d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 429
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "skyblue"

    const v2, 0x87ceeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slateblue"

    const v2, 0x6a5acd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 431
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategray"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategrey"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "snow"

    const v2, 0xfffafa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "springgreen"

    const v2, 0xff7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "steelblue"

    const v2, 0x4682b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tan"

    const v2, 0xd2b48c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "thistle"

    const v2, 0xd8bfd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tomato"

    const v2, 0xff6347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "turquoise"

    const v2, 0x40e0d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "violet"

    const v2, 0xee82ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 442
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "wheat"

    const v2, 0xf5deb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "whitesmoke"

    const v2, 0xf5f5f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 445
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellowgreen"

    const v2, 0x9acd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x3f31a9fc    # 0.694f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x3f553f7d    # 0.833f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "medium"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/high16 v4, 0x41400000    # 12.0f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 452
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x41666666    # 14.4f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 453
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x418a6666    # 17.3f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x41a5999a    # 20.7f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "smaller"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x42a6a8f6    # 83.33f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "larger"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/high16 v4, 0x42f00000    # 120.0f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bold"

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bolder"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "lighter"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "100"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 463
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "200"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "300"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "400"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 466
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "500"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "600"

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "700"

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 469
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "800"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "900"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 472
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "italic"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "oblique"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "none"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 477
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 479
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 480
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 505
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 507
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 508
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 509
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 510
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 511
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 513
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 515
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 516
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 518
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 519
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 521
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 522
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 523
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 524
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 525
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 535
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 554
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 78
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 79
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 82
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 86
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 87
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 92
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 94
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 69
    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1204
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<circle>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1207
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1208
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Circle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    move-object v2, v3

    .line 1209
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Circle;->document:Lcom/caverock/androidsvg/SVG;

    .line 1210
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Circle;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1211
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1212
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1213
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1214
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1215
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1216
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1217
    return-void
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1924
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<clipPath>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1926
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1927
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1928
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$ClipPath;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    move-object v2, v3

    .line 1929
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1930
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1931
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1932
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1933
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1934
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1935
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 1936
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1937
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1938
    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<defs>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 961
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 962
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Defs;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    move-object v2, v3

    .line 963
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Defs;->document:Lcom/caverock/androidsvg/SVG;

    .line 964
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Defs;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 965
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 966
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 967
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 968
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 969
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 970
    return-void
.end method

.method private dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 851
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v5, "SVGParser"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 852
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    if-eqz v5, :cond_0

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 854
    move-object v5, v1

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 858
    :cond_0
    return-void

    .line 854
    :cond_1
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v3, v5

    .line 855
    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGParser;->dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1251
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<ellipse>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1254
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1255
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    move-object v2, v3

    .line 1256
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->document:Lcom/caverock/androidsvg/SVG;

    .line 1257
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1258
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1259
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1260
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1261
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1262
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1263
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1264
    return-void
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<g>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 939
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 940
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Group;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    move-object v2, v3

    .line 941
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Group;->document:Lcom/caverock/androidsvg/SVG;

    .line 942
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Group;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 943
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 944
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 945
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 946
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 947
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 948
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 949
    return-void
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<image>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1040
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1041
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Image;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    move-object v2, v3

    .line 1042
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Image;->document:Lcom/caverock/androidsvg/SVG;

    .line 1043
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Image;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1044
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1045
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1046
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1047
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1048
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1049
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1050
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1051
    return-void
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1303
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<line>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1306
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1307
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Line;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    move-object v2, v3

    .line 1308
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Line;->document:Lcom/caverock/androidsvg/SVG;

    .line 1309
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Line;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1310
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1311
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1312
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1313
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1314
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1315
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1316
    return-void
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1697
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<linearGradiant>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1700
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1701
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    move-object v2, v3

    .line 1702
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1703
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1704
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1705
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1706
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1707
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 1708
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1709
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1710
    return-void
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1628
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<marker>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1630
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1631
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1632
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    move-object v2, v3

    .line 1633
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Marker;->document:Lcom/caverock/androidsvg/SVG;

    .line 1634
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Marker;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1635
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1636
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1637
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1638
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1639
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1640
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1641
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1642
    return-void
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2118
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<mask>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2120
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 2121
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2122
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Mask;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    move-object v2, v3

    .line 2123
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Mask;->document:Lcom/caverock/androidsvg/SVG;

    .line 2124
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Mask;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2125
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2126
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2127
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2128
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2129
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2130
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2131
    return-void
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1222
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1242
    return-void

    .line 1224
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1225
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1222
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1228
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1229
    goto :goto_1

    .line 1231
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1232
    goto :goto_1

    .line 1234
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1235
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1236
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1225
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1943
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1961
    return-void

    .line 1945
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1946
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1943
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1949
    :pswitch_0
    const-string v5, "objectBoundingBox"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1950
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    .line 1951
    goto :goto_1

    :cond_1
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1952
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    .line 1953
    goto :goto_1

    .line 1954
    :cond_2
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute clipPathUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1946
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move-object v8, v2

    invoke-interface {v8}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 1597
    return-void

    .line 1573
    :cond_0
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 1574
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v7

    move-object v8, v2

    move v9, v3

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 1571
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1577
    :sswitch_0
    move-object v7, v1

    move-object v8, v4

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    .line 1578
    goto :goto_1

    .line 1580
    :sswitch_1
    move-object v7, v1

    move-object v8, v4

    invoke-interface {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    .line 1581
    goto :goto_1

    .line 1583
    :sswitch_2
    move-object v7, v1

    move-object v8, v4

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    .line 1584
    goto :goto_1

    .line 1586
    :sswitch_3
    move-object v7, v1

    move-object v8, v4

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    .line 1587
    goto :goto_1

    .line 1589
    :sswitch_4
    move-object v7, v4

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 1590
    move-object v7, v5

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/HashSet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    move-object v6, v7

    .line 1591
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    .line 1592
    goto :goto_1

    .line 1590
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_2

    .line 1574
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_4
        0x4a -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2597
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v2

    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 2617
    :goto_1
    return-void

    .line 2599
    :cond_0
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2600
    move-object v6, v4

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v4

    const-string v7, "xml:id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2602
    :cond_1
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 2603
    goto :goto_1

    .line 2605
    :cond_2
    move-object v6, v4

    const-string v7, "xml:space"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2606
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2607
    const-string v6, "default"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2608
    move-object v6, v1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 2609
    goto :goto_1

    :cond_3
    const-string v6, "preserve"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2610
    move-object v6, v1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 2611
    goto :goto_1

    .line 2612
    :cond_4
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2597
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1294
    return-void

    .line 1271
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1272
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1269
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1275
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1276
    goto :goto_1

    .line 1278
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1279
    goto :goto_1

    .line 1281
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1282
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1283
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1286
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1287
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1288
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1272
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x39 -> :sswitch_2
        0x3a -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1715
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v2

    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 1751
    return-void

    .line 1717
    :cond_0
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1718
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 1715
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1721
    :sswitch_0
    const-string v6, "objectBoundingBox"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1722
    move-object v6, v1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 1723
    goto :goto_1

    :cond_1
    const-string v6, "userSpaceOnUse"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1724
    move-object v6, v1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 1725
    goto :goto_1

    .line 1726
    :cond_2
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Invalid value for attribute gradientUnits"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1730
    :sswitch_1
    move-object v6, v1

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 1731
    goto :goto_1

    .line 1735
    :sswitch_2
    move-object v6, v1

    move-object v7, v4

    :try_start_0
    invoke-static {v7}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    goto :goto_1

    .line 1737
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1739
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Invalid spreadMethod attribute. \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is not a valid value."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1743
    :sswitch_3
    const-string v6, "http://www.w3.org/1999/xlink"

    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1744
    goto :goto_1

    .line 1745
    :cond_3
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 1746
    goto :goto_1

    .line 1718
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1056
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1089
    return-void

    .line 1058
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1059
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1056
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1063
    goto :goto_1

    .line 1065
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1066
    goto :goto_1

    .line 1068
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1069
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <use> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1073
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1074
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1075
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <use> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1078
    :sswitch_4
    const-string v5, "http://www.w3.org/1999/xlink"

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1079
    goto :goto_1

    .line 1080
    :cond_2
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    .line 1081
    goto :goto_1

    .line 1083
    :sswitch_5
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 1084
    goto :goto_1

    .line 1059
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x31 -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1321
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1342
    return-void

    .line 1323
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1324
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1321
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1327
    :pswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1328
    goto :goto_1

    .line 1330
    :pswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1331
    goto :goto_1

    .line 1333
    :pswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1334
    goto :goto_1

    .line 1336
    :pswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1337
    goto :goto_1

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1756
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1777
    return-void

    .line 1758
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1759
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1756
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1762
    :pswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1763
    goto :goto_1

    .line 1765
    :pswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1766
    goto :goto_1

    .line 1768
    :pswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1769
    goto :goto_1

    .line 1771
    :pswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1772
    goto :goto_1

    .line 1759
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1647
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1688
    return-void

    .line 1649
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1650
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1647
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1653
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    .line 1654
    goto :goto_1

    .line 1656
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    .line 1657
    goto :goto_1

    .line 1659
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1660
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1661
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1664
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 1665
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1666
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1669
    :sswitch_4
    const-string v5, "strokeWidth"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1670
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    .line 1671
    goto :goto_1

    :cond_2
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1672
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    .line 1673
    goto :goto_1

    .line 1674
    :cond_3
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute markerUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1678
    :sswitch_5
    const-string v5, "auto"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1679
    move-object v5, v1

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 1680
    goto/16 :goto_1

    .line 1681
    :cond_4
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 1683
    goto/16 :goto_1

    .line 1650
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_2
        0x2a -> :sswitch_5
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2179
    return-void

    .line 2138
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2139
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 2136
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2142
    :sswitch_0
    const-string v5, "objectBoundingBox"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2143
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    .line 2144
    goto :goto_1

    :cond_2
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2145
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    .line 2146
    goto :goto_1

    .line 2147
    :cond_3
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute maskUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2151
    :sswitch_1
    const-string v5, "objectBoundingBox"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2152
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2153
    goto :goto_1

    :cond_4
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2154
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2155
    goto :goto_1

    .line 2156
    :cond_5
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute maskContentUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2160
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2161
    goto :goto_1

    .line 2163
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2164
    goto :goto_1

    .line 2166
    :sswitch_4
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2167
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2168
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2171
    :sswitch_5
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2172
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2173
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_5
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
        0x52 -> :sswitch_4
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1133
    return-void

    .line 1118
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1119
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1116
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1122
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1123
    goto :goto_1

    .line 1125
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1126
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1127
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2037
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2088
    return-void

    .line 2039
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2040
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 2037
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2043
    :sswitch_0
    const-string v5, "objectBoundingBox"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2044
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 2045
    goto :goto_1

    :cond_2
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2046
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 2047
    goto :goto_1

    .line 2048
    :cond_3
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute patternUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2052
    :sswitch_1
    const-string v5, "objectBoundingBox"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2053
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2054
    goto :goto_1

    :cond_4
    const-string v5, "userSpaceOnUse"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2055
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2056
    goto :goto_1

    .line 2057
    :cond_5
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for attribute patternContentUnits"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2061
    :sswitch_2
    move-object v5, v1

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 2062
    goto :goto_1

    .line 2064
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2065
    goto :goto_1

    .line 2067
    :sswitch_4
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2068
    goto :goto_1

    .line 2070
    :sswitch_5
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2071
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2072
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2075
    :sswitch_6
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2076
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2077
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2080
    :sswitch_7
    const-string v5, "http://www.w3.org/1999/xlink"

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2081
    goto/16 :goto_1

    .line 2082
    :cond_6
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    .line 2083
    goto/16 :goto_1

    .line 2040
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_0
        0x52 -> :sswitch_5
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    move v10, v4

    move-object v11, v2

    invoke-interface {v11}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v11

    if-lt v10, v11, :cond_0

    .line 1399
    return-void

    .line 1374
    :cond_0
    move-object v10, v2

    move v11, v4

    invoke-interface {v10, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v10

    sget-object v11, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v10, v11, :cond_1

    .line 1376
    new-instance v10, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v2

    move v13, v4

    invoke-interface {v12, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 1377
    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 1378
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1380
    :goto_1
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1392
    move-object v10, v1

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [F

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1393
    const/4 v10, 0x0

    move v7, v10

    .line 1394
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v9, v10

    :goto_2
    move-object v10, v9

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1372
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1381
    :cond_2
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    move-object v7, v10

    .line 1382
    move-object v10, v7

    if-nez v10, :cond_3

    .line 1383
    new-instance v10, Lorg/xml/sax/SAXException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, "Invalid <"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1384
    :cond_3
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v10

    .line 1385
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    move-object v8, v10

    .line 1386
    move-object v10, v8

    if-nez v10, :cond_4

    .line 1387
    new-instance v10, Lorg/xml/sax/SAXException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, "Invalid <"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1388
    :cond_4
    move-object v10, v5

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v10

    .line 1389
    move-object v10, v6

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1390
    move-object v10, v6

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 1394
    :cond_5
    move-object v10, v9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object v8, v10

    .line 1395
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v10, v11

    goto/16 :goto_2
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1804
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1830
    return-void

    .line 1806
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1807
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1804
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1810
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1811
    goto :goto_1

    .line 1813
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1814
    goto :goto_1

    .line 1816
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1817
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1818
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1821
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1822
    goto :goto_1

    .line 1824
    :sswitch_4
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1825
    goto :goto_1

    .line 1807
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1160
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1195
    return-void

    .line 1162
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1163
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1160
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1166
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1167
    goto :goto_1

    .line 1169
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1170
    goto :goto_1

    .line 1172
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1173
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1174
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1177
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1178
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1179
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1182
    :sswitch_4
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1183
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1184
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1187
    :sswitch_5
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1188
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1189
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1163
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x39 -> :sswitch_4
        0x3a -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 899
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 927
    return-void

    .line 901
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 902
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 899
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 905
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 906
    goto :goto_1

    .line 908
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 909
    goto :goto_1

    .line 911
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 912
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 913
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 916
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 917
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 918
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 921
    :sswitch_4
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    .line 922
    goto :goto_1

    .line 902
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x50 -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1858
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1870
    return-void

    .line 1860
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1861
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1858
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1864
    :pswitch_0
    move-object v5, v1

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser;->parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    .line 1865
    goto :goto_1

    .line 1861
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2625
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2650
    return-void

    .line 2627
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2628
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2625
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2633
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 2644
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v5, :cond_2

    .line 2645
    move-object v5, v1

    new-instance v6, Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 2646
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2636
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    .line 2637
    goto :goto_1

    .line 2640
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    .line 2641
    goto :goto_1

    .line 2633
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x49 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1530
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1544
    return-void

    .line 1532
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1533
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1530
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1536
    :pswitch_0
    const-string v5, "http://www.w3.org/1999/xlink"

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1537
    goto :goto_1

    .line 1538
    :cond_1
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    .line 1539
    goto :goto_1

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1992
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2009
    return-void

    .line 1994
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1995
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1992
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1998
    :sswitch_0
    const-string v5, "http://www.w3.org/1999/xlink"

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1999
    goto :goto_1

    .line 2000
    :cond_1
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    .line 2001
    goto :goto_1

    .line 2003
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2004
    goto :goto_1

    .line 1995
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1449
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1470
    return-void

    .line 1451
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1452
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1449
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1455
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    .line 1456
    goto :goto_1

    .line 1458
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    .line 1459
    goto :goto_1

    .line 1461
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    .line 1462
    goto :goto_1

    .line 1464
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    .line 1465
    goto :goto_1

    .line 1452
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2935
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 2942
    return-void

    .line 2937
    :cond_0
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    sget-object v5, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v4, v5, :cond_1

    .line 2939
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    .line 2935
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 998
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1028
    return-void

    .line 1000
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1001
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 998
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1004
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1005
    goto :goto_1

    .line 1007
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1008
    goto :goto_1

    .line 1010
    :sswitch_2
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1011
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1012
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <use> element. width cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1015
    :sswitch_3
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1016
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1017
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid <use> element. height cannot be negative"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1020
    :sswitch_4
    const-string v5, "http://www.w3.org/1999/xlink"

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1021
    goto :goto_1

    .line 1022
    :cond_2
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 1023
    goto :goto_1

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2915
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2930
    return-void

    .line 2917
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2918
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 2915
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2921
    :sswitch_0
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2922
    goto :goto_1

    .line 2924
    :sswitch_1
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 2925
    goto :goto_1

    .line 2918
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_1
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 4008
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/caverock/androidsvg/CSSParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V

    move-object v2, v3

    .line 4009
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 4010
    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3591
    move-object v0, p0

    const-string v6, "auto"

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3592
    const/4 v6, 0x0

    move-object v0, v6

    .line 3611
    :goto_0
    return-object v0

    .line 3593
    :cond_0
    move-object v6, v0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "rect("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3594
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3596
    :cond_1
    new-instance v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 3597
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3599
    move-object v6, v1

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    move-object v2, v6

    .line 3600
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3601
    move-object v6, v1

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    move-object v3, v6

    .line 3602
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3603
    move-object v6, v1

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    move-object v4, v6

    .line 3604
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3605
    move-object v6, v1

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v6

    move-object v5, v6

    .line 3607
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3608
    move-object v6, v1

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3609
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Bad rect() clip definition: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3611
    :cond_2
    new-instance v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    move-object v0, v6

    goto/16 :goto_0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3264
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_2

    .line 3268
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 3269
    new-instance v5, Lcom/caverock/androidsvg/SVG$Colour;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v5

    .line 3303
    :goto_0
    return-object v0

    .line 3270
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 3271
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 3272
    move v5, v1

    const/16 v6, 0xf00

    and-int/lit16 v5, v5, 0xf00

    move v2, v5

    .line 3273
    move v5, v1

    const/16 v6, 0xf0

    and-int/lit16 v5, v5, 0xf0

    move v3, v5

    .line 3274
    move v5, v1

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    move v4, v5

    .line 3275
    new-instance v5, Lcom/caverock/androidsvg/SVG$Colour;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v2

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    move v8, v2

    const/16 v9, 0xc

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v7, v8

    move v8, v3

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    move v8, v3

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    move v8, v4

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    move v8, v4

    or-int/2addr v7, v8

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v5

    goto :goto_0

    .line 3277
    :cond_1
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Bad hex colour value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3280
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 3282
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Bad colour value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3285
    :cond_2
    move-object v5, v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3287
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 3288
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3290
    move-object v5, v1

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v5

    move v2, v5

    .line 3291
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v5

    .line 3292
    move-object v5, v1

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v5

    move v3, v5

    .line 3293
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v5

    .line 3294
    move-object v5, v1

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v5

    move v4, v5

    .line 3296
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3297
    move-object v5, v1

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3298
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Bad rgb() colour value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3299
    :cond_3
    new-instance v5, Lcom/caverock/androidsvg/SVG$Colour;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v2

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    move v8, v3

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    move v8, v4

    or-int/2addr v7, v8

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v5

    goto/16 :goto_0

    .line 3303
    :cond_4
    move-object v5, v0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private static parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3312
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v1, v2

    .line 3313
    move-object v2, v0

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3314
    move v2, v1

    const/high16 v3, 0x43800000    # 256.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v1, v2

    .line 3317
    :cond_0
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_1
    move v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/16 v2, 0xff

    goto :goto_0

    :cond_2
    move v2, v1

    float-to-int v2, v2

    goto :goto_0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3324
    move-object v0, p0

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    move-object v3, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 3325
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3326
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid colour keyword: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3328
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v2

    return-object v0
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3249
    move-object v0, p0

    move-object v1, v0

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3250
    const/4 v1, 0x0

    move-object v0, v1

    .line 3254
    :goto_0
    return-object v0

    .line 3251
    :cond_0
    move-object v1, v0

    const-string v2, "currentColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3252
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3254
    :cond_1
    move-object v1, v0

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3490
    move-object v0, p0

    const-string v1, "nonzero"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3491
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-object v0, v1

    .line 3493
    :goto_0
    return-object v0

    .line 3492
    :cond_0
    const-string v1, "evenodd"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3493
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-object v0, v1

    goto :goto_0

    .line 3494
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid fill-rule property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3140
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 3141
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Invalid float value (empty string)"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3144
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    return v0

    .line 3146
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3148
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid float value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3336
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    move-object v2, v9

    .line 3337
    const/4 v9, 0x0

    move-object v3, v9

    .line 3338
    const/4 v9, 0x0

    move-object v4, v9

    .line 3339
    const/4 v9, 0x0

    move-object v5, v9

    .line 3340
    const/4 v9, 0x0

    move-object v6, v9

    .line 3343
    const-string v9, "|caption|icon|menu|message-box|small-caption|status-bar|"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/16 v12, 0x7c

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 3400
    :goto_0
    return-void

    .line 3347
    :cond_0
    new-instance v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 3348
    const/4 v9, 0x0

    move-object v8, v9

    .line 3351
    :goto_1
    move-object v9, v7

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 3352
    move-object v9, v7

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3353
    move-object v9, v8

    if-nez v9, :cond_1

    .line 3354
    new-instance v9, Lorg/xml/sax/SAXException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Invalid font style attribute: missing font size and family"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3355
    :cond_1
    move-object v9, v4

    if-eqz v9, :cond_3

    move-object v9, v5

    if-eqz v9, :cond_3

    .line 3379
    :cond_2
    move-object v9, v8

    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v9

    move-object v3, v9

    .line 3382
    move-object v9, v7

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3384
    move-object v9, v7

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3385
    move-object v9, v7

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 3386
    move-object v9, v8

    if-nez v9, :cond_7

    .line 3387
    new-instance v9, Lorg/xml/sax/SAXException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Invalid font style attribute: missing line-height"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3357
    :cond_3
    move-object v9, v8

    const-string v10, "normal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3358
    goto :goto_1

    .line 3359
    :cond_4
    move-object v9, v4

    if-nez v9, :cond_5

    .line 3360
    sget-object v9, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v4, v9

    .line 3361
    move-object v9, v4

    if-eqz v9, :cond_5

    .line 3362
    goto :goto_1

    .line 3364
    :cond_5
    move-object v9, v5

    if-nez v9, :cond_6

    .line 3365
    sget-object v9, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v5, v9

    .line 3366
    move-object v9, v5

    if-eqz v9, :cond_6

    .line 3367
    goto :goto_1

    .line 3370
    :cond_6
    move-object v9, v6

    if-nez v9, :cond_2

    move-object v9, v8

    const-string v10, "small-caps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3371
    move-object v9, v8

    move-object v6, v9

    .line 3349
    goto/16 :goto_1

    .line 3388
    :cond_7
    move-object v9, v8

    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v9

    .line 3389
    move-object v9, v7

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3393
    :cond_8
    move-object v9, v7

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    move-object v2, v9

    .line 3395
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3396
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 3397
    move-object v9, v0

    move-object v10, v4

    if-nez v10, :cond_9

    const/16 v10, 0x190

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3398
    move-object v9, v0

    move-object v10, v5

    if-nez v10, :cond_a

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :goto_3
    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3399
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v12, 0x1e000

    or-long/2addr v10, v12

    iput-wide v10, v9, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3400
    goto/16 :goto_0

    .line 3397
    :cond_9
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_2

    .line 3398
    :cond_a
    move-object v10, v5

    goto :goto_3
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3406
    move-object v0, p0

    const/4 v4, 0x0

    move-object v1, v4

    .line 3407
    new-instance v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 3410
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3411
    move-object v4, v3

    if-nez v4, :cond_1

    .line 3412
    move-object v4, v2

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3413
    :cond_1
    move-object v4, v3

    if-nez v4, :cond_2

    .line 3422
    :goto_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 3415
    :cond_2
    move-object v4, v1

    if-nez v4, :cond_3

    .line 3416
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 3417
    :cond_3
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 3418
    move-object v4, v2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v4

    .line 3419
    move-object v4, v2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3429
    move-object v0, p0

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    move-object v1, v2

    .line 3430
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3431
    move-object v2, v0

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    move-object v1, v2

    .line 3433
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3451
    move-object v0, p0

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v1, v2

    .line 3452
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3453
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid font-style property: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3455
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3440
    move-object v0, p0

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 3441
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3442
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid font-weight property: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3444
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3955
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3956
    const/4 v2, 0x0

    move-object v0, v2

    .line 3960
    :goto_0
    return-object v0

    .line 3957
    :cond_0
    move-object v2, v0

    const-string v3, "url("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3958
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Bad "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3960
    :cond_2
    move-object v2, v0

    const/4 v3, 0x4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1875
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1876
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1877
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 1878
    const/4 v5, 0x0

    move v3, v5

    .line 1880
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_1

    .line 1881
    add-int/lit8 v2, v2, -0x1

    .line 1882
    const/4 v5, 0x1

    move v3, v5

    .line 1886
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move v4, v5

    .line 1887
    move v5, v3

    if-eqz v5, :cond_2

    .line 1888
    move v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    move v4, v5

    .line 1889
    :cond_2
    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    return-object v0

    :cond_3
    move v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/high16 v5, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_0

    .line 1891
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1893
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid offset value in <stop>: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method protected static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3077
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 3078
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Invalid length value (empty string)"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3079
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    .line 3080
    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    move-object v2, v6

    .line 3081
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    .line 3083
    move v6, v3

    const/16 v7, 0x25

    if-ne v6, v7, :cond_2

    .line 3084
    add-int/lit8 v1, v1, -0x1

    .line 3085
    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    move-object v2, v6

    .line 3097
    :cond_1
    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v1

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    move v4, v6

    .line 3098
    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v4

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v6

    return-object v0

    .line 3086
    :cond_2
    move v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3087
    add-int/lit8 v1, v1, -0x2

    .line 3088
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 3090
    move-object v6, v4

    :try_start_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 3091
    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    .line 3092
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Invalid length unit specifier: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3100
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 3102
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Invalid length value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3112
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 3113
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Invalid length list (empty string)"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3115
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 3117
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 3118
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3120
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3131
    move-object v5, v1

    move-object v0, v5

    return-object v0

    .line 3122
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    move-object v3, v5

    .line 3123
    move-object v5, v3

    if-nez v5, :cond_2

    .line 3124
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid length list value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3125
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v5

    move-object v4, v5

    .line 3126
    move-object v5, v4

    if-nez v5, :cond_3

    .line 3127
    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v5

    .line 3128
    :cond_3
    move-object v5, v1

    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3129
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v5

    goto :goto_0
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 5

    .prologue
    .line 3617
    move-object v0, p0

    move-object v1, v0

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3618
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    move-object v0, v1

    .line 3620
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static parseOpacity(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3158
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v1, v2

    .line 3159
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3580
    move-object v0, p0

    const-string v1, "visible"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3581
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    .line 3583
    :goto_0
    return-object v0

    .line 3582
    :cond_1
    const-string v1, "hidden"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "scroll"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3583
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0

    .line 3584
    :cond_3
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid toverflow property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3228
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "url("

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3230
    move-object v5, v0

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 3231
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 3232
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Bad "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attribute. Unterminated url() reference"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3234
    :cond_0
    move-object v5, v0

    const/4 v6, 0x4

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3235
    const/4 v5, 0x0

    move-object v4, v5

    .line 3237
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 3238
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 3239
    move-object v5, v0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v5

    move-object v4, v5

    .line 3240
    :cond_1
    new-instance v5, Lcom/caverock/androidsvg/SVG$PaintReference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    move-object v0, v5

    .line 3243
    :goto_0
    return-object v0

    :cond_2
    move-object v5, v0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3641
    move-object/from16 v2, p0

    new-instance v23, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v23

    .line 3643
    const/16 v23, 0x3f

    move/from16 v4, v23

    .line 3644
    const/16 v23, 0x0

    move/from16 v5, v23

    const/16 v23, 0x0

    move/from16 v6, v23

    .line 3645
    const/16 v23, 0x0

    move/from16 v7, v23

    const/16 v23, 0x0

    move/from16 v8, v23

    .line 3646
    const/16 v23, 0x0

    move/from16 v9, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 3651
    new-instance v23, Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    move-object/from16 v22, v23

    .line 3653
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 3654
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    .line 3881
    :goto_0
    return-object v2

    .line 3656
    :cond_0
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v4, v23

    .line 3658
    move/from16 v23, v4

    const/16 v24, 0x4d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move/from16 v23, v4

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 3659
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto :goto_0

    .line 3876
    :cond_1
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3878
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v4, v23

    .line 3663
    :cond_2
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3665
    move/from16 v23, v4

    sparse-switch v23, :sswitch_data_0

    .line 3868
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto :goto_0

    .line 3670
    :sswitch_0
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3671
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3672
    move-object/from16 v23, v12

    if-nez v23, :cond_3

    .line 3673
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3674
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3677
    :cond_3
    move/from16 v23, v4

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    .line 3678
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3679
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3681
    :cond_4
    move-object/from16 v23, v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    .line 3682
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v9, v24

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v7, v24

    move/from16 v5, v23

    .line 3683
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v10, v24

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v8, v24

    move/from16 v6, v23

    .line 3685
    move/from16 v23, v4

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v23, 0x6c

    :goto_1
    move/from16 v4, v23

    .line 3871
    :goto_2
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v23

    .line 3872
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3881
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3685
    :cond_5
    const/16 v23, 0x4c

    goto :goto_1

    .line 3691
    :sswitch_1
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3692
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3693
    move-object/from16 v23, v12

    if-nez v23, :cond_6

    .line 3694
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3695
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3697
    :cond_6
    move/from16 v23, v4

    const/16 v24, 0x6c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 3698
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3699
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3701
    :cond_7
    move-object/from16 v23, v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3702
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v9, v24

    move/from16 v5, v23

    .line 3703
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v10, v24

    move/from16 v6, v23

    .line 3704
    goto/16 :goto_2

    .line 3709
    :sswitch_2
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3710
    move-object/from16 v23, v3

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3711
    move-object/from16 v23, v3

    move-object/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v15, v23

    .line 3712
    move-object/from16 v23, v3

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v16, v23

    .line 3713
    move-object/from16 v23, v3

    move-object/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3714
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3715
    move-object/from16 v23, v12

    if-nez v23, :cond_8

    .line 3716
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3717
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3719
    :cond_8
    move/from16 v23, v4

    const/16 v24, 0x63

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 3720
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3721
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3722
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3723
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3724
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v15, v23

    .line 3725
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v16, v23

    .line 3727
    :cond_9
    move-object/from16 v23, v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    move-object/from16 v29, v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    invoke-virtual/range {v23 .. v29}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3728
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v9, v23

    .line 3729
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v10, v23

    .line 3730
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v5, v23

    .line 3731
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v6, v23

    .line 3732
    goto/16 :goto_2

    .line 3737
    :sswitch_3
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v5

    mul-float v23, v23, v24

    move/from16 v24, v9

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3738
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v6

    mul-float v23, v23, v24

    move/from16 v24, v10

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3739
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v15, v23

    .line 3740
    move-object/from16 v23, v3

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v16, v23

    .line 3741
    move-object/from16 v23, v3

    move-object/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3742
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3743
    move-object/from16 v23, v12

    if-nez v23, :cond_a

    .line 3744
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3745
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3747
    :cond_a
    move/from16 v23, v4

    const/16 v24, 0x73

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 3748
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3749
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3750
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v15, v23

    .line 3751
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v16, v23

    .line 3753
    :cond_b
    move-object/from16 v23, v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    move-object/from16 v29, v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    invoke-virtual/range {v23 .. v29}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3754
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v9, v23

    .line 3755
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v10, v23

    .line 3756
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v5, v23

    .line 3757
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v6, v23

    .line 3758
    goto/16 :goto_2

    .line 3763
    :sswitch_4
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    .line 3764
    move/from16 v23, v7

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v9, v24

    move/from16 v5, v23

    .line 3765
    move/from16 v23, v8

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v10, v24

    move/from16 v6, v23

    .line 3766
    goto/16 :goto_2

    .line 3771
    :sswitch_5
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3772
    move-object/from16 v23, v11

    if-nez v23, :cond_c

    .line 3773
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3774
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3776
    :cond_c
    move/from16 v23, v4

    const/16 v24, 0x68

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 3777
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3779
    :cond_d
    move-object/from16 v23, v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3780
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v9, v24

    move/from16 v5, v23

    .line 3781
    goto/16 :goto_2

    .line 3786
    :sswitch_6
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3787
    move-object/from16 v23, v12

    if-nez v23, :cond_e

    .line 3788
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3789
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3791
    :cond_e
    move/from16 v23, v4

    const/16 v24, 0x76

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 3792
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3794
    :cond_f
    move-object/from16 v23, v22

    move/from16 v24, v5

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3795
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v10, v24

    move/from16 v6, v23

    .line 3796
    goto/16 :goto_2

    .line 3801
    :sswitch_7
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3802
    move-object/from16 v23, v3

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3803
    move-object/from16 v23, v3

    move-object/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3804
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3805
    move-object/from16 v23, v12

    if-nez v23, :cond_10

    .line 3806
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3807
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3809
    :cond_10
    move/from16 v23, v4

    const/16 v24, 0x71

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 3810
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3811
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3812
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3813
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3815
    :cond_11
    move-object/from16 v23, v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v23 .. v27}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3816
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v9, v23

    .line 3817
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v10, v23

    .line 3818
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v5, v23

    .line 3819
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v6, v23

    .line 3820
    goto/16 :goto_2

    .line 3825
    :sswitch_8
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v5

    mul-float v23, v23, v24

    move/from16 v24, v9

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v13, v23

    .line 3826
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v6

    mul-float v23, v23, v24

    move/from16 v24, v10

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v14, v23

    .line 3827
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3828
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3829
    move-object/from16 v23, v12

    if-nez v23, :cond_12

    .line 3830
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3831
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3833
    :cond_12
    move/from16 v23, v4

    const/16 v24, 0x74

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 3834
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3835
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3837
    :cond_13
    move-object/from16 v23, v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v23 .. v27}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3838
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v9, v23

    .line 3839
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v10, v23

    .line 3840
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v5, v23

    .line 3841
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v6, v23

    .line 3842
    goto/16 :goto_2

    .line 3847
    :sswitch_9
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v17, v23

    .line 3848
    move-object/from16 v23, v3

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v18, v23

    .line 3849
    move-object/from16 v23, v3

    move-object/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v19, v23

    .line 3850
    move-object/from16 v23, v3

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v20, v23

    .line 3851
    move-object/from16 v23, v3

    move-object/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v21, v23

    .line 3852
    move-object/from16 v23, v3

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3853
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3854
    move-object/from16 v23, v12

    if-eqz v23, :cond_14

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-ltz v23, :cond_14

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_15

    .line 3855
    :cond_14
    const-string v23, "SVGParser"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const-string v26, "Bad path coords for "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v4

    move/from16 v0, v25

    int-to-char v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " path segment"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 3856
    move-object/from16 v23, v22

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 3858
    :cond_15
    move/from16 v23, v4

    const/16 v24, 0x61

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 3859
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v5

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v11, v23

    .line 3860
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v24, v6

    add-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v12, v23

    .line 3862
    :cond_16
    move-object/from16 v23, v22

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    move-object/from16 v30, v12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v30

    invoke-virtual/range {v23 .. v30}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    .line 3863
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v9, v24

    move/from16 v5, v23

    .line 3864
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v31, v23

    move/from16 v23, v31

    move/from16 v24, v31

    move/from16 v10, v24

    move/from16 v6, v23

    .line 3865
    goto/16 :goto_2

    .line 3665
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_2
        0x48 -> :sswitch_5
        0x4c -> :sswitch_1
        0x4d -> :sswitch_0
        0x51 -> :sswitch_7
        0x53 -> :sswitch_3
        0x54 -> :sswitch_8
        0x56 -> :sswitch_6
        0x5a -> :sswitch_4
        0x61 -> :sswitch_9
        0x63 -> :sswitch_2
        0x68 -> :sswitch_5
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
        0x71 -> :sswitch_7
        0x73 -> :sswitch_3
        0x74 -> :sswitch_8
        0x76 -> :sswitch_6
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3195
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 3196
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3198
    const/4 v7, 0x0

    move-object v3, v7

    .line 3199
    const/4 v7, 0x0

    move-object v4, v7

    .line 3201
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 3202
    const-string v7, "defer"

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3203
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3204
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 3206
    :cond_0
    sget-object v7, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v3, v7

    .line 3207
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3209
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3210
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 3211
    move-object v7, v6

    const-string v8, "meet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3212
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-object v4, v7

    .line 3219
    :cond_1
    :goto_0
    move-object v7, v0

    new-instance v8, Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3220
    return-void

    .line 3213
    :cond_2
    move-object v7, v6

    const-string v8, "slice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3214
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-object v4, v7

    .line 3215
    goto :goto_0

    .line 3216
    :cond_3
    new-instance v7, Lorg/xml/sax/SAXException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Invalid preserveAspectRatio definition: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3893
    move-object v0, p0

    new-instance v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 3894
    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v2, v4

    .line 3896
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3909
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 3898
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3899
    move-object v4, v3

    const-string v5, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3900
    move-object v4, v2

    move-object v5, v3

    const-string v6, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 3907
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    .line 3905
    :cond_1
    move-object v4, v2

    const-string v5, "UNSUPPORTED"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3940
    move-object v0, p0

    new-instance v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 3941
    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v2, v4

    .line 3943
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3949
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 3945
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3946
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 3947
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3527
    move-object v0, p0

    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 3528
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3530
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3531
    const/4 v5, 0x0

    move-object v0, v5

    .line 3560
    :goto_0
    return-object v0

    .line 3533
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    move-object v2, v5

    .line 3534
    move-object v5, v2

    if-nez v5, :cond_1

    .line 3535
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 3536
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3537
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3539
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v5

    move v3, v5

    .line 3541
    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 3542
    move-object v5, v4

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3543
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3557
    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 3558
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 3545
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v5

    .line 3546
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    move-object v2, v5

    .line 3547
    move-object v5, v2

    if-nez v5, :cond_4

    .line 3548
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3549
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3550
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3551
    :cond_5
    move-object v5, v4

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3552
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    move v3, v5

    goto :goto_1

    .line 3560
    :cond_6
    move-object v5, v4

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/caverock/androidsvg/SVG$Length;

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3501
    move-object v0, p0

    const-string v1, "butt"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3502
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-object v0, v1

    .line 3506
    :goto_0
    return-object v0

    .line 3503
    :cond_0
    const-string v1, "round"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3504
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-object v0, v1

    goto :goto_0

    .line 3505
    :cond_1
    const-string v1, "square"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3506
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-object v0, v1

    goto :goto_0

    .line 3507
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid stroke-linecap property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3514
    move-object v0, p0

    const-string v1, "miter"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3515
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-object v0, v1

    .line 3519
    :goto_0
    return-object v0

    .line 3516
    :cond_0
    const-string v1, "round"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3517
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-object v0, v1

    goto :goto_0

    .line 3518
    :cond_1
    const-string v1, "bevel"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3519
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-object v0, v1

    goto :goto_0

    .line 3520
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid stroke-linejoin property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2658
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    const-string v8, "/\\*.*?\\*/"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 2662
    :cond_0
    :goto_0
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 2663
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2664
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2679
    :goto_1
    return-void

    .line 2666
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2667
    move-object v5, v2

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2668
    move-object v5, v4

    if-nez v5, :cond_2

    .line 2669
    goto :goto_1

    .line 2670
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2671
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v2

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2673
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v5, :cond_4

    .line 2674
    move-object v5, v0

    new-instance v6, Lcom/caverock/androidsvg/SVG$Style;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 2675
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2660
    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3917
    move-object v0, p0

    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 3918
    new-instance v5, Ljava/util/HashSet;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v2, v5

    .line 3920
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3932
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 3922
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3923
    move-object v5, v3

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v4, v5

    .line 3924
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 3925
    move-object v5, v3

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3928
    :cond_1
    new-instance v5, Ljava/util/Locale;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3929
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3930
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3567
    move-object v0, p0

    const-string v1, "start"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3568
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-object v0, v1

    .line 3572
    :goto_0
    return-object v0

    .line 3569
    :cond_0
    const-string v1, "middle"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3570
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-object v0, v1

    goto :goto_0

    .line 3571
    :cond_1
    const-string v1, "end"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3572
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-object v0, v1

    goto :goto_0

    .line 3573
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid text-anchor property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3462
    move-object v0, p0

    const-string v1, "none"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3463
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-object v0, v1

    .line 3471
    :goto_0
    return-object v0

    .line 3464
    :cond_0
    const-string v1, "underline"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3465
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-object v0, v1

    goto :goto_0

    .line 3466
    :cond_1
    const-string v1, "overline"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3467
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-object v0, v1

    goto :goto_0

    .line 3468
    :cond_2
    const-string v1, "line-through"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3469
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-object v0, v1

    goto :goto_0

    .line 3470
    :cond_3
    const-string v1, "blink"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3471
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-object v0, v1

    goto :goto_0

    .line 3472
    :cond_4
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid text-decoration property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3479
    move-object v0, p0

    const-string v1, "ltr"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-object v0, v1

    .line 3482
    :goto_0
    return-object v0

    .line 3481
    :cond_0
    const-string v1, "rtl"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3482
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-object v0, v1

    goto :goto_0

    .line 3483
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid direction property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2947
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v12, Landroid/graphics/Matrix;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v12

    .line 2949
    new-instance v12, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v3, v12

    .line 2950
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2952
    :goto_0
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3062
    :goto_1
    move-object v12, v2

    move-object v0, v12

    return-object v0

    .line 2954
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 2956
    move-object v12, v4

    if-nez v12, :cond_1

    .line 2957
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Bad transform function encountered in transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2959
    :cond_1
    move-object v12, v4

    const-string v13, "matrix"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2961
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2962
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 2963
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    .line 2964
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v6, v12

    .line 2965
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    .line 2966
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v7, v12

    .line 2967
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    .line 2968
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v8, v12

    .line 2969
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    .line 2970
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v9, v12

    .line 2971
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    .line 2972
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v10, v12

    .line 2973
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2975
    move-object v12, v10

    if-eqz v12, :cond_2

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2976
    :cond_2
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2978
    :cond_3
    new-instance v12, Landroid/graphics/Matrix;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v12

    .line 2979
    move-object v12, v11

    const/16 v13, 0x9

    new-array v13, v13, [F

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x4

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x5

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x6

    const/16 v16, 0x0

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x7

    const/16 v16, 0x0

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/16 v15, 0x8

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2980
    move-object v12, v2

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v12

    .line 3057
    :cond_4
    :goto_2
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 3058
    goto/16 :goto_1

    .line 2982
    :cond_5
    move-object v12, v4

    const-string v13, "translate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2984
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2985
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 2986
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v6, v12

    .line 2987
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2989
    move-object v12, v5

    if-eqz v12, :cond_6

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2990
    :cond_6
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2992
    :cond_7
    move-object v12, v6

    if-nez v12, :cond_8

    .line 2993
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    goto :goto_2

    .line 2995
    :cond_8
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    .line 2996
    goto :goto_2

    .line 2997
    :cond_9
    move-object v12, v4

    const-string v13, "scale"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2999
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3000
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 3001
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v6, v12

    .line 3002
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3004
    move-object v12, v5

    if-eqz v12, :cond_a

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_b

    .line 3005
    :cond_a
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3007
    :cond_b
    move-object v12, v6

    if-nez v12, :cond_c

    .line 3008
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v14, v5

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v12

    goto/16 :goto_2

    .line 3010
    :cond_c
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v12

    .line 3011
    goto/16 :goto_2

    .line 3012
    :cond_d
    move-object v12, v4

    const-string v13, "rotate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 3014
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3015
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 3016
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v6, v12

    .line 3017
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v7, v12

    .line 3018
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3020
    move-object v12, v5

    if-eqz v12, :cond_e

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_f

    .line 3021
    :cond_e
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3023
    :cond_f
    move-object v12, v6

    if-nez v12, :cond_10

    .line 3024
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v12

    .line 3025
    goto/16 :goto_2

    :cond_10
    move-object v12, v7

    if-eqz v12, :cond_11

    .line 3026
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move-object v15, v7

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v12

    .line 3027
    goto/16 :goto_2

    .line 3028
    :cond_11
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3031
    :cond_12
    move-object v12, v4

    const-string v13, "skewX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 3033
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3034
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 3035
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3037
    move-object v12, v5

    if-eqz v12, :cond_13

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_14

    .line 3038
    :cond_13
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3040
    :cond_14
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    double-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preSkew(FF)Z

    move-result v12

    .line 3041
    goto/16 :goto_2

    .line 3042
    :cond_15
    move-object v12, v4

    const-string v13, "skewY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 3044
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3045
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    move-object v5, v12

    .line 3046
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3048
    move-object v12, v5

    if-eqz v12, :cond_16

    move-object v12, v3

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_17

    .line 3049
    :cond_16
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3051
    :cond_17
    move-object v12, v2

    const/4 v13, 0x0

    move-object v14, v5

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preSkew(FF)Z

    move-result v12

    .line 3052
    goto/16 :goto_2

    .line 3053
    :cond_18
    move-object v12, v4

    if-eqz v12, :cond_4

    .line 3054
    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const-string v16, "Invalid transform list fn: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3059
    :cond_19
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v12

    goto/16 :goto_0
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3627
    move-object v0, p0

    const-string v1, "none"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3628
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-object v0, v1

    .line 3630
    :goto_0
    return-object v0

    .line 3629
    :cond_0
    const-string v1, "non-scaling-stroke"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3630
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-object v0, v1

    goto :goto_0

    .line 3631
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid vector-effect property: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3168
    move-object v0, p0

    new-instance v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 3169
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3171
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    move-object v2, v6

    .line 3172
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3173
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    move-object v3, v6

    .line 3174
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3175
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    move-object v4, v6

    .line 3176
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v6

    .line 3177
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    move-object v5, v6

    .line 3179
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v5

    if-nez v6, :cond_1

    .line 3180
    :cond_0
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3181
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 3182
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Invalid viewBox. width cannot be negative"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3183
    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 3184
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Invalid viewBox. height cannot be negative"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3186
    :cond_3
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v6

    return-object v0
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<path>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1101
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1102
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Path;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    move-object v2, v3

    .line 1103
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Path;->document:Lcom/caverock/androidsvg/SVG;

    .line 1104
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Path;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1105
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1106
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1107
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1108
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1109
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1110
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1111
    return-void
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2018
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<pattern>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 2021
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2022
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Pattern;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    move-object v2, v3

    .line 2023
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    .line 2024
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Pattern;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2025
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2026
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2027
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2028
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2029
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 2030
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2031
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2032
    return-void
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1408
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<polygon>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1410
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1411
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1412
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Polygon;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    move-object v2, v3

    .line 1413
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Polygon;->document:Lcom/caverock/androidsvg/SVG;

    .line 1414
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Polygon;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1415
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1416
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1417
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1418
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1419
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    const-string v6, "polygon"

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1420
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1421
    return-void
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1351
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<polyline>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1354
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1355
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    move-object v2, v3

    .line 1356
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$PolyLine;->document:Lcom/caverock/androidsvg/SVG;

    .line 1357
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$PolyLine;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1358
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1359
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1360
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1361
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1362
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    const-string v6, "polyline"

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1363
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1364
    return-void
.end method

.method protected static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2684
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 2910
    :goto_0
    return-void

    .line 2687
    :cond_0
    move-object v3, v2

    const-string v4, "inherit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2688
    goto :goto_0

    .line 2690
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2910
    :goto_1
    :pswitch_0
    goto :goto_0

    .line 2693
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    const-string v5, "fill"

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2694
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x1

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2695
    goto :goto_1

    .line 2698
    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2699
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2700
    goto :goto_1

    .line 2703
    :pswitch_3
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2704
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x4

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2705
    goto :goto_1

    .line 2708
    :pswitch_4
    move-object v3, v0

    move-object v4, v2

    const-string v5, "stroke"

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2709
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2710
    goto :goto_1

    .line 2713
    :pswitch_5
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2714
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x10

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2715
    goto :goto_1

    .line 2718
    :pswitch_6
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2719
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x20

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2720
    goto/16 :goto_1

    .line 2723
    :pswitch_7
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2724
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x40

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2725
    goto/16 :goto_1

    .line 2728
    :pswitch_8
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2729
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2730
    goto/16 :goto_1

    .line 2733
    :pswitch_9
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2734
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x100

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2735
    goto/16 :goto_1

    .line 2738
    :pswitch_a
    const-string v3, "none"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2739
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2742
    :goto_2
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x200

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2743
    goto/16 :goto_1

    .line 2741
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    .line 2746
    :pswitch_b
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2747
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x400

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2748
    goto/16 :goto_1

    .line 2751
    :pswitch_c
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2752
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x800

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2753
    goto/16 :goto_1

    .line 2756
    :pswitch_d
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2757
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x1000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2758
    goto/16 :goto_1

    .line 2761
    :pswitch_e
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    .line 2762
    goto/16 :goto_1

    .line 2765
    :pswitch_f
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2766
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x2000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2767
    goto/16 :goto_1

    .line 2770
    :pswitch_10
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2771
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2772
    goto/16 :goto_1

    .line 2775
    :pswitch_11
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2776
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x8000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2777
    goto/16 :goto_1

    .line 2780
    :pswitch_12
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2781
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x10000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2782
    goto/16 :goto_1

    .line 2785
    :pswitch_13
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2786
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x20000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2787
    goto/16 :goto_1

    .line 2790
    :pswitch_14
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2791
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x1000000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2792
    goto/16 :goto_1

    .line 2795
    :pswitch_15
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2796
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2797
    goto/16 :goto_1

    .line 2800
    :pswitch_16
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2801
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x80000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2802
    goto/16 :goto_1

    .line 2805
    :pswitch_17
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2806
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2807
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2808
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0xe00000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2809
    goto/16 :goto_1

    .line 2812
    :pswitch_18
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2813
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2814
    goto/16 :goto_1

    .line 2817
    :pswitch_19
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2818
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x400000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2819
    goto/16 :goto_1

    .line 2822
    :pswitch_1a
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2823
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x800000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2824
    goto/16 :goto_1

    .line 2827
    :pswitch_1b
    move-object v3, v2

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    const-string v3, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x7c

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 2828
    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for \"display\" attribute: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2829
    :cond_4
    move-object v3, v0

    move-object v4, v2

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2830
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x1000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2831
    goto/16 :goto_1

    .line 2829
    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    .line 2834
    :pswitch_1c
    move-object v3, v2

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6

    const-string v3, "|visible|hidden|collapse|"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x7c

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 2835
    :cond_6
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Invalid value for \"visibility\" attribute: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2836
    :cond_7
    move-object v3, v0

    move-object v4, v2

    const-string v5, "visible"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2837
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x2000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2838
    goto/16 :goto_1

    .line 2841
    :pswitch_1d
    move-object v3, v2

    const-string v4, "currentColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2842
    move-object v3, v0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2846
    :goto_4
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x4000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2847
    goto/16 :goto_1

    .line 2844
    :cond_8
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_4

    .line 2850
    :pswitch_1e
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2851
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x8000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2852
    goto/16 :goto_1

    .line 2855
    :pswitch_1f
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2856
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x100000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2857
    goto/16 :goto_1

    .line 2860
    :pswitch_20
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2861
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2862
    goto/16 :goto_1

    .line 2865
    :pswitch_21
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2866
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x20000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2867
    goto/16 :goto_1

    .line 2870
    :pswitch_22
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2871
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v6, 0x40000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2872
    goto/16 :goto_1

    .line 2875
    :pswitch_23
    move-object v3, v2

    const-string v4, "currentColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2876
    move-object v3, v0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2880
    :goto_5
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x80000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2881
    goto/16 :goto_1

    .line 2878
    :cond_9
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_5

    .line 2884
    :pswitch_24
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 2885
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x100000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2886
    goto/16 :goto_1

    .line 2889
    :pswitch_25
    move-object v3, v2

    const-string v4, "currentColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2890
    move-object v3, v0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2894
    :goto_6
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x200000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2895
    goto/16 :goto_1

    .line 2892
    :cond_a
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_6

    .line 2898
    :pswitch_26
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2899
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x400000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2900
    goto/16 :goto_1

    .line 2903
    :pswitch_27
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2904
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2905
    goto/16 :goto_1

    .line 2690
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1786
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<radialGradient>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1789
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1790
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    move-object v2, v3

    .line 1791
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1792
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1793
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1794
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1795
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1796
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 1797
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1798
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1799
    return-void
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1142
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<rect>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1145
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1146
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    move-object v2, v3

    .line 1147
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Rect;->document:Lcom/caverock/androidsvg/SVG;

    .line 1148
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Rect;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1149
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1150
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1151
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1152
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1153
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1154
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1155
    return-void
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1904
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<solidColor>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1906
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1907
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1908
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$SolidColor;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    move-object v2, v3

    .line 1909
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SolidColor;->document:Lcom/caverock/androidsvg/SVG;

    .line 1910
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SolidColor;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1911
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1912
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1913
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1914
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1915
    return-void
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1839
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<stop>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1841
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1842
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1843
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v3, :cond_1

    .line 1844
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1845
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$Stop;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    move-object v2, v3

    .line 1846
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Stop;->document:Lcom/caverock/androidsvg/SVG;

    .line 1847
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Stop;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1848
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1849
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1850
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 1851
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1852
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1853
    return-void
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3972
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "<style>"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3974
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v6, :cond_0

    .line 3975
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Invalid document. Root element must be <svg>"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3978
    :cond_0
    const/4 v6, 0x1

    move v2, v6

    .line 3979
    const-string v6, "all"

    move-object v3, v6

    .line 3981
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 3997
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v3

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3998
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 4003
    :goto_1
    return-void

    .line 3983
    :cond_1
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 3984
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v6

    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 3981
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3987
    :sswitch_0
    move-object v6, v5

    const-string v7, "text/css"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v2, v6

    .line 3988
    goto :goto_2

    .line 3990
    :sswitch_1
    move-object v6, v5

    move-object v3, v6

    .line 3991
    goto :goto_2

    .line 4000
    :cond_2
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 4001
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto :goto_1

    .line 3984
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 878
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<svg>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    new-instance v3, Lcom/caverock/androidsvg/SVG$Svg;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    move-object v2, v3

    .line 881
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->document:Lcom/caverock/androidsvg/SVG;

    .line 882
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 883
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 884
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 885
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 886
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 887
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 888
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 889
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    .line 893
    :goto_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 894
    return-void

    .line 891
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1606
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<symbol>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1609
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1610
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Symbol;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    move-object v2, v3

    .line 1611
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Symbol;->document:Lcom/caverock/androidsvg/SVG;

    .line 1612
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Symbol;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1613
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1614
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1615
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1616
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1617
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1618
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1619
    return-void
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1430
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<text>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1432
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1433
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1434
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Text;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    move-object v2, v3

    .line 1435
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Text;->document:Lcom/caverock/androidsvg/SVG;

    .line 1436
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Text;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1437
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1438
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1439
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1440
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1441
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1442
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1443
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1444
    return-void
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1970
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<textPath>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1972
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1973
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1974
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$TextPath;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    move-object v2, v3

    .line 1975
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1976
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1977
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1978
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1979
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1980
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 1981
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1982
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1983
    move-object v3, v2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_1

    .line 1984
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1987
    :goto_0
    return-void

    .line 1986
    :cond_1
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1507
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<tref>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1510
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1511
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v3, :cond_1

    .line 1512
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1513
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$TRef;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    move-object v2, v3

    .line 1514
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TRef;->document:Lcom/caverock/androidsvg/SVG;

    .line 1515
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1516
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1517
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1518
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1519
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1520
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1521
    move-object v3, v2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_2

    .line 1522
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1525
    :goto_0
    return-void

    .line 1524
    :cond_2
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1479
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<tspan>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1481
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1482
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1483
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v3, :cond_1

    .line 1484
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1485
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$TSpan;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    move-object v2, v3

    .line 1486
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TSpan;->document:Lcom/caverock/androidsvg/SVG;

    .line 1487
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1488
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1489
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1490
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1491
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1492
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1493
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1494
    move-object v3, v2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_2

    .line 1495
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1498
    :goto_0
    return-void

    .line 1497
    :cond_2
    move-object v3, v2

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v4, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 979
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<use>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 982
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 983
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Use;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    move-object v2, v3

    .line 984
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    .line 985
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Use;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 986
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 987
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 988
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 989
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 990
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 991
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 992
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 993
    return-void
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2097
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<view>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2099
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 2100
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2101
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$View;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    move-object v2, v3

    .line 2102
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$View;->document:Lcom/caverock/androidsvg/SVG;

    .line 2103
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$View;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2104
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2105
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2106
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2107
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2108
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2109
    return-void
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1553
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "<switch>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v3, :cond_0

    .line 1556
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1557
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$Switch;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    move-object v2, v3

    .line 1558
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Switch;->document:Lcom/caverock/androidsvg/SVG;

    .line 1559
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Switch;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1560
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1561
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1562
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1563
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1564
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1565
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1566
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v7, :cond_0

    .line 757
    :goto_0
    return-void

    .line 725
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v7, :cond_2

    .line 727
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v7, :cond_1

    .line 728
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v3

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 729
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 730
    goto :goto_0

    .line 733
    :cond_2
    move-object v7, v0

    iget-boolean v7, v7, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v7, :cond_4

    .line 735
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v7, :cond_3

    .line 736
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v3

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 737
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 738
    goto :goto_0

    .line 741
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v7, v7, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v7, :cond_5

    .line 745
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    move-object v4, v7

    .line 746
    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .line 747
    move v7, v5

    if-nez v7, :cond_6

    const/4 v7, 0x0

    :goto_1
    move-object v6, v7

    .line 748
    move-object v7, v6

    instance-of v7, v7, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v7, :cond_7

    .line 750
    move-object v7, v6

    check-cast v7, Lcom/caverock/androidsvg/SVG$TextSequence;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    move v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 757
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 747
    :cond_6
    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgObject;

    goto :goto_1

    .line 753
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    new-instance v8, Lcom/caverock/androidsvg/SVG$TextSequence;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_2
.end method

.method public comment([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 763
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v4, :cond_0

    .line 776
    :goto_0
    return-void

    .line 768
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v4, :cond_2

    .line 770
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    .line 771
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v3

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 772
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 773
    goto :goto_0

    .line 776
    :cond_2
    goto :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    .line 846
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object v4, v0

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v4, :cond_0

    .line 785
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v4, :cond_0

    .line 786
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 835
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v4, "http://www.w3.org/2000/svg"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 792
    goto :goto_0

    .line 795
    :cond_1
    move-object v4, v2

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v2

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 796
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 797
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 798
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    .line 801
    :cond_3
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 802
    goto :goto_0

    .line 799
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 800
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    goto :goto_1

    .line 805
    :cond_5
    move-object v4, v2

    const-string v5, "style"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    .line 806
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 807
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 808
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 809
    goto/16 :goto_0

    .line 813
    :cond_6
    move-object v4, v2

    const-string v5, "svg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 814
    move-object v4, v2

    const-string v5, "defs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 815
    move-object v4, v2

    const-string v5, "g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 816
    move-object v4, v2

    const-string v5, "use"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 817
    move-object v4, v2

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 818
    move-object v4, v2

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 819
    move-object v4, v2

    const-string v5, "tspan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 820
    move-object v4, v2

    const-string v5, "switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 821
    move-object v4, v2

    const-string v5, "symbol"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 822
    move-object v4, v2

    const-string v5, "marker"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 823
    move-object v4, v2

    const-string v5, "linearGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 824
    move-object v4, v2

    const-string v5, "radialGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 825
    move-object v4, v2

    const-string v5, "stop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 826
    move-object v4, v2

    const-string v5, "clipPath"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 827
    move-object v4, v2

    const-string v5, "textPath"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 828
    move-object v4, v2

    const-string v5, "pattern"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 829
    move-object v4, v2

    const-string v5, "view"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 830
    move-object v4, v2

    const-string v5, "mask"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 831
    move-object v4, v2

    const-string v5, "solidColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 832
    :cond_7
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 835
    :cond_8
    goto/16 :goto_0
.end method

.method protected parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-nez v7, :cond_0

    .line 574
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v7

    .line 578
    :cond_0
    move-object v7, v1

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->mark(I)V

    .line 579
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    move v2, v7

    .line 580
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/InputStream;->reset()V

    .line 581
    move v7, v2

    const v8, 0x8b1f

    if-ne v7, v8, :cond_1

    .line 583
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 592
    :cond_1
    :goto_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    move-object v2, v7

    .line 595
    move-object v7, v2

    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    move-object v3, v7

    .line 596
    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    move-object v4, v7

    .line 597
    move-object v7, v4

    move-object v8, v0

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 598
    move-object v7, v4

    const-string v8, "http://xml.org/sax/properties/lexical-handler"

    move-object v9, v0

    invoke-interface {v7, v8, v9}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    move-object v7, v4

    new-instance v8, Lorg/xml/sax/InputSource;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    move-object v7, v1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 621
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v0, v7

    return-object v0

    .line 586
    :catch_0
    move-exception v7

    move-object v2, v7

    goto :goto_0

    .line 601
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 603
    :try_start_3
    new-instance v7, Lcom/caverock/androidsvg/SVGParseException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "File error"

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 614
    :catchall_0
    move-exception v7

    move-object v5, v7

    .line 616
    move-object v7, v1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 620
    :goto_2
    move-object v7, v5

    throw v7

    .line 605
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 607
    :try_start_5
    new-instance v7, Lcom/caverock/androidsvg/SVGParseException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "XML Parser problem"

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 609
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 611
    new-instance v7, Lcom/caverock/androidsvg/SVGParseException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "SVG parse error: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 617
    :catch_4
    move-exception v7

    move-object v6, v7

    .line 618
    const-string v7, "SVGParser"

    const-string v8, "Exception thrown closing input stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 617
    :catch_5
    move-exception v7

    move-object v6, v7

    .line 618
    const-string v7, "SVGParser"

    const-string v8, "Exception thrown closing input stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_1
.end method

.method protected setSupportedFormats([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, v2, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 560
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 561
    return-void
.end method

.method public startDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    .line 634
    move-object v1, v0

    new-instance v2, Lcom/caverock/androidsvg/SVG;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 635
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 643
    move-object v5, v0

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v5, :cond_0

    .line 644
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 716
    :goto_0
    return-void

    .line 647
    :cond_0
    const-string v5, "http://www.w3.org/2000/svg"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 648
    goto :goto_0

    .line 651
    :cond_1
    move-object v5, v2

    const-string v6, "svg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 652
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    .line 716
    :goto_1
    goto :goto_0

    .line 653
    :cond_2
    move-object v5, v2

    const-string v6, "g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    .line 655
    goto :goto_1

    :cond_3
    move-object v5, v2

    const-string v6, "defs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 656
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    .line 657
    goto :goto_1

    :cond_4
    move-object v5, v2

    const-string v6, "use"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 658
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    .line 659
    goto :goto_1

    :cond_5
    move-object v5, v2

    const-string v6, "path"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 660
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    .line 661
    goto :goto_1

    :cond_6
    move-object v5, v2

    const-string v6, "rect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 662
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    .line 663
    goto :goto_1

    :cond_7
    move-object v5, v2

    const-string v6, "circle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 664
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    .line 665
    goto :goto_1

    :cond_8
    move-object v5, v2

    const-string v6, "ellipse"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 666
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    .line 667
    goto :goto_1

    :cond_9
    move-object v5, v2

    const-string v6, "line"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 668
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    .line 669
    goto :goto_1

    :cond_a
    move-object v5, v2

    const-string v6, "polyline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 670
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    .line 671
    goto/16 :goto_1

    :cond_b
    move-object v5, v2

    const-string v6, "polygon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 672
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    .line 673
    goto/16 :goto_1

    :cond_c
    move-object v5, v2

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 674
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    .line 675
    goto/16 :goto_1

    :cond_d
    move-object v5, v2

    const-string v6, "tspan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 676
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    .line 677
    goto/16 :goto_1

    :cond_e
    move-object v5, v2

    const-string v6, "tref"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 678
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    .line 679
    goto/16 :goto_1

    :cond_f
    move-object v5, v2

    const-string v6, "switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 680
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    .line 681
    goto/16 :goto_1

    :cond_10
    move-object v5, v2

    const-string v6, "symbol"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 682
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    .line 683
    goto/16 :goto_1

    :cond_11
    move-object v5, v2

    const-string v6, "marker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 684
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    .line 685
    goto/16 :goto_1

    :cond_12
    move-object v5, v2

    const-string v6, "linearGradient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 686
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    .line 687
    goto/16 :goto_1

    :cond_13
    move-object v5, v2

    const-string v6, "radialGradient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 688
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    .line 689
    goto/16 :goto_1

    :cond_14
    move-object v5, v2

    const-string v6, "stop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 690
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    .line 691
    goto/16 :goto_1

    :cond_15
    move-object v5, v2

    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 692
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    .line 693
    goto/16 :goto_1

    :cond_16
    move-object v5, v2

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    move-object v5, v2

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 694
    :cond_17
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 695
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 696
    goto/16 :goto_1

    :cond_18
    move-object v5, v2

    const-string v6, "clipPath"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 697
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    .line 698
    goto/16 :goto_1

    :cond_19
    move-object v5, v2

    const-string v6, "textPath"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 699
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    .line 700
    goto/16 :goto_1

    :cond_1a
    move-object v5, v2

    const-string v6, "pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 701
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    .line 702
    goto/16 :goto_1

    :cond_1b
    move-object v5, v2

    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 703
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    .line 704
    goto/16 :goto_1

    :cond_1c
    move-object v5, v2

    const-string v6, "view"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 705
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    .line 706
    goto/16 :goto_1

    :cond_1d
    move-object v5, v2

    const-string v6, "mask"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 707
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    .line 708
    goto/16 :goto_1

    :cond_1e
    move-object v5, v2

    const-string v6, "style"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 709
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    .line 710
    goto/16 :goto_1

    :cond_1f
    move-object v5, v2

    const-string v6, "solidColor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 711
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    .line 712
    goto/16 :goto_1

    .line 713
    :cond_20
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 714
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_1
.end method
