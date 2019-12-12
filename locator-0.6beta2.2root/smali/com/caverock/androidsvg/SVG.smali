.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Box;,
        Lcom/caverock/androidsvg/SVG$CSSClipRect;,
        Lcom/caverock/androidsvg/SVG$Circle;,
        Lcom/caverock/androidsvg/SVG$ClipPath;,
        Lcom/caverock/androidsvg/SVG$Colour;,
        Lcom/caverock/androidsvg/SVG$CurrentColor;,
        Lcom/caverock/androidsvg/SVG$Defs;,
        Lcom/caverock/androidsvg/SVG$Ellipse;,
        Lcom/caverock/androidsvg/SVG$GradientElement;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$GraphicsElement;,
        Lcom/caverock/androidsvg/SVG$Group;,
        Lcom/caverock/androidsvg/SVG$HasTransform;,
        Lcom/caverock/androidsvg/SVG$Image;,
        Lcom/caverock/androidsvg/SVG$Length;,
        Lcom/caverock/androidsvg/SVG$Line;,
        Lcom/caverock/androidsvg/SVG$Marker;,
        Lcom/caverock/androidsvg/SVG$Mask;,
        Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/caverock/androidsvg/SVG$PaintReference;,
        Lcom/caverock/androidsvg/SVG$Path;,
        Lcom/caverock/androidsvg/SVG$PathDefinition;,
        Lcom/caverock/androidsvg/SVG$PathInterface;,
        Lcom/caverock/androidsvg/SVG$Pattern;,
        Lcom/caverock/androidsvg/SVG$PolyLine;,
        Lcom/caverock/androidsvg/SVG$Polygon;,
        Lcom/caverock/androidsvg/SVG$Rect;,
        Lcom/caverock/androidsvg/SVG$SolidColor;,
        Lcom/caverock/androidsvg/SVG$Stop;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$Svg;,
        Lcom/caverock/androidsvg/SVG$SvgConditional;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalElement;,
        Lcom/caverock/androidsvg/SVG$SvgContainer;,
        Lcom/caverock/androidsvg/SVG$SvgElement;,
        Lcom/caverock/androidsvg/SVG$SvgElementBase;,
        Lcom/caverock/androidsvg/SVG$SvgLinearGradient;,
        Lcom/caverock/androidsvg/SVG$SvgObject;,
        Lcom/caverock/androidsvg/SVG$SvgPaint;,
        Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/caverock/androidsvg/SVG$SvgRadialGradient;,
        Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/caverock/androidsvg/SVG$Switch;,
        Lcom/caverock/androidsvg/SVG$Symbol;,
        Lcom/caverock/androidsvg/SVG$TRef;,
        Lcom/caverock/androidsvg/SVG$TSpan;,
        Lcom/caverock/androidsvg/SVG$Text;,
        Lcom/caverock/androidsvg/SVG$TextChild;,
        Lcom/caverock/androidsvg/SVG$TextContainer;,
        Lcom/caverock/androidsvg/SVG$TextPath;,
        Lcom/caverock/androidsvg/SVG$TextPositionedContainer;,
        Lcom/caverock/androidsvg/SVG$TextRoot;,
        Lcom/caverock/androidsvg/SVG$TextSequence;,
        Lcom/caverock/androidsvg/SVG$Unit;,
        Lcom/caverock/androidsvg/SVG$Use;,
        Lcom/caverock/androidsvg/SVG$View;
    }
.end annotation


# static fields
.field private static final DEFAULT_PICTURE_HEIGHT:I = 0x200

.field private static final DEFAULT_PICTURE_WIDTH:I = 0x200

.field private static final EMPTY_CHILD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SPECIFIED_ALL:J = -0x1L

.field protected static final SPECIFIED_CLIP:J = 0x100000L

.field protected static final SPECIFIED_CLIP_PATH:J = 0x10000000L

.field protected static final SPECIFIED_CLIP_RULE:J = 0x20000000L

.field protected static final SPECIFIED_COLOR:J = 0x1000L

.field protected static final SPECIFIED_DIRECTION:J = 0x1000000000L

.field protected static final SPECIFIED_DISPLAY:J = 0x1000000L

.field protected static final SPECIFIED_FILL:J = 0x1L

.field protected static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field protected static final SPECIFIED_FILL_RULE:J = 0x2L

.field protected static final SPECIFIED_FONT_FAMILY:J = 0x2000L

.field protected static final SPECIFIED_FONT_SIZE:J = 0x4000L

.field protected static final SPECIFIED_FONT_STYLE:J = 0x10000L

.field protected static final SPECIFIED_FONT_WEIGHT:J = 0x8000L

.field protected static final SPECIFIED_MARKER_END:J = 0x800000L

.field protected static final SPECIFIED_MARKER_MID:J = 0x400000L

.field protected static final SPECIFIED_MARKER_START:J = 0x200000L

.field protected static final SPECIFIED_MASK:J = 0x40000000L

.field protected static final SPECIFIED_NON_INHERITING:J = 0xfdd180800L

.field protected static final SPECIFIED_OPACITY:J = 0x800L

.field protected static final SPECIFIED_OVERFLOW:J = 0x80000L

.field protected static final SPECIFIED_SOLID_COLOR:J = 0x80000000L

.field protected static final SPECIFIED_SOLID_OPACITY:J = 0x100000000L

.field protected static final SPECIFIED_STOP_COLOR:J = 0x4000000L

.field protected static final SPECIFIED_STOP_OPACITY:J = 0x8000000L

.field protected static final SPECIFIED_STROKE:J = 0x8L

.field protected static final SPECIFIED_STROKE_DASHARRAY:J = 0x200L

.field protected static final SPECIFIED_STROKE_DASHOFFSET:J = 0x400L

.field protected static final SPECIFIED_STROKE_LINECAP:J = 0x40L

.field protected static final SPECIFIED_STROKE_LINEJOIN:J = 0x80L

.field protected static final SPECIFIED_STROKE_MITERLIMIT:J = 0x100L

.field protected static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field protected static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field protected static final SPECIFIED_TEXT_ANCHOR:J = 0x40000L

.field protected static final SPECIFIED_TEXT_DECORATION:J = 0x20000L

.field protected static final SPECIFIED_VECTOR_EFFECT:J = 0x800000000L

.field protected static final SPECIFIED_VIEWPORT_FILL:J = 0x200000000L

.field protected static final SPECIFIED_VIEWPORT_FILL_OPACITY:J = 0x400000000L

.field protected static final SPECIFIED_VISIBILITY:J = 0x2000000L

.field private static final SQRT2:D = 1.414213562373095

.field protected static final SUPPORTED_SVG_VERSION:Ljava/lang/String; = "1.2"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG"

.field private static final VERSION:Ljava/lang/String; = "1.2.1"


# instance fields
.field private cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field private desc:Ljava/lang/String;

.field private fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

.field private renderDPI:F

.field private rootElement:Lcom/caverock/androidsvg/SVG$Svg;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    .line 942
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 94
    move-object v1, v0

    const-string v2, ""

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 95
    move-object v1, v0

    const-string v2, ""

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 101
    move-object v1, v0

    const/high16 v2, 0x42c00000    # 96.0f

    iput v2, v1, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 104
    move-object v1, v0

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 131
    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    return-object v0
.end method

.method private getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;
    .locals 13

    .prologue
    .line 808
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v2, v6

    .line 809
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v3, v6

    .line 811
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v6, v7, :cond_1

    .line 812
    :cond_0
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v6

    .line 831
    :goto_0
    return-object v0

    .line 814
    :cond_1
    move-object v6, v2

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v6

    move v4, v6

    .line 817
    move-object v6, v3

    if-eqz v6, :cond_4

    .line 818
    move-object v6, v3

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v6, v7, :cond_2

    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v6, v7, :cond_2

    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v6, v7, :cond_3

    .line 819
    :cond_2
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v6

    goto :goto_0

    .line 821
    :cond_3
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v6

    move v5, v6

    .line 831
    :goto_1
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v6

    goto :goto_0

    .line 825
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v6, :cond_5

    .line 826
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v6, v7

    move v5, v6

    .line 827
    goto :goto_1

    .line 828
    :cond_5
    move v6, v4

    move v5, v6

    goto :goto_1
.end method

.method private getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 11

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v3, v8

    .line 2045
    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2046
    move-object v8, v3

    move-object v0, v8

    .line 2061
    :goto_0
    return-object v0

    .line 2047
    :cond_0
    move-object v8, v1

    invoke-interface {v8}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :cond_1
    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2061
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 2047
    :cond_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v4, v8

    .line 2049
    move-object v8, v4

    instance-of v8, v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v8, :cond_3

    .line 2050
    goto :goto_1

    .line 2051
    :cond_3
    move-object v8, v4

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v6, v8

    .line 2052
    move-object v8, v2

    move-object v9, v6

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2053
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 2054
    :cond_4
    move-object v8, v4

    instance-of v8, v8, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v8, :cond_1

    .line 2056
    move-object v8, v0

    move-object v9, v4

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v8

    move-object v7, v8

    .line 2057
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 2058
    move-object v8, v7

    move-object v0, v8

    goto :goto_0
.end method

.method private getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2076
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 2078
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_0

    .line 2079
    move-object v6, v3

    move-object v7, v1

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2080
    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :cond_1
    :goto_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2087
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 2080
    :cond_2
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v4, v6

    .line 2082
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_3

    .line 2083
    move-object v6, v3

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2084
    :cond_3
    move-object v6, v4

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v6, :cond_1

    .line 2085
    move-object v6, v0

    move-object v7, v4

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public static getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/caverock/androidsvg/SVGParser;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    move-object v2, v5

    .line 203
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 204
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v5

    move-object v4, v5

    .line 205
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 206
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public static getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    move-object v1, v2

    .line 144
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getFromResource(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    new-instance v3, Lcom/caverock/androidsvg/SVGParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    move-object v2, v3

    .line 187
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    move-object v1, v2

    .line 158
    move-object v2, v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    const-string v0, "1.2.1"

    return-object v0
.end method


# virtual methods
.method protected addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 4

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 842
    return-void
.end method

.method protected getCSSRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->getRules()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentAspectRatio()F
    .locals 7

    .prologue
    .line 753
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v3, :cond_0

    .line 754
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "SVG document is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v1, v3

    .line 757
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v2, v3

    .line 760
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_3

    move-object v3, v2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_3

    .line 762
    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 763
    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    move v0, v3

    .line 773
    :goto_0
    return v0

    .line 764
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 768
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 769
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 773
    :cond_4
    const/high16 v3, -0x40800000    # -1.0f

    move v0, v3

    goto :goto_0
.end method

.method public getDocumentDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHeight()F
    .locals 5

    .prologue
    .line 614
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v0, v1

    return v0
.end method

.method public getDocumentPreserveAspectRatio()Lcom/caverock/androidsvg/PreserveAspectRatio;
    .locals 5

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v1, :cond_1

    .line 734
    const/4 v1, 0x0

    move-object v0, v1

    .line 736
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, v1

    goto :goto_0
.end method

.method public getDocumentSVGVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentViewBox()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 693
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 694
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_1

    .line 697
    const/4 v1, 0x0

    move-object v0, v1

    .line 699
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Box;->toRectF()Landroid/graphics/RectF;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getDocumentWidth()F
    .locals 5

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v0, v1

    return v0
.end method

.method protected getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 5

    .prologue
    .line 2034
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2035
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v0, v2

    .line 2038
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method protected getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .locals 2

    .prologue
    .line 1891
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-object v0, v1

    return-object v0
.end method

.method public getRenderDPI()F
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    move v0, v1

    return v0
.end method

.method protected getRootElement()Lcom/caverock/androidsvg/SVG$Svg;
    .locals 2

    .prologue
    .line 783
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v0, v1

    return-object v0
.end method

.method public getViewList()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v6, :cond_0

    .line 525
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "SVG document is empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 527
    :cond_0
    move-object v6, v0

    const-class v7, Lcom/caverock/androidsvg/SVG$View;

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move-object v1, v6

    .line 529
    new-instance v6, Ljava/util/HashSet;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    move-object v2, v6

    .line 530
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 538
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 530
    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v3, v6

    .line 532
    move-object v6, v3

    check-cast v6, Lcom/caverock/androidsvg/SVG$View;

    move-object v5, v6

    .line 533
    move-object v6, v5

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 534
    move-object v6, v2

    move-object v7, v5

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 536
    :cond_2
    const-string v6, "AndroidSVG"

    const-string v7, "getViewList(): found a <view> without an id attribute"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method protected hasCSSRules()Z
    .locals 2

    .prologue
    .line 853
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerExternalFileResolver(Lcom/caverock/androidsvg/SVGExternalFileResolver;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 222
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 367
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 12

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 381
    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    move-object v3, v5

    .line 386
    :goto_0
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    move-object v4, v5

    .line 388
    move-object v5, v4

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 389
    return-void

    .line 383
    :cond_0
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v3, v5

    goto :goto_0
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .locals 10

    .prologue
    .line 265
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v1, v6

    .line 266
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 268
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v6

    move v2, v6

    .line 270
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v4, v6

    .line 272
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 273
    move v6, v2

    move-object v7, v4

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v6, v7

    move-object v7, v4

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v6, v7

    move v3, v6

    .line 282
    :goto_0
    move-object v6, v0

    move v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    move v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v6

    move-object v0, v6

    .line 286
    :goto_1
    return-object v0

    .line 275
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v5, v6

    .line 276
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 277
    move-object v6, v5

    move-object v7, v0

    iget v7, v7, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v6

    move v3, v6

    .line 278
    goto :goto_0

    .line 279
    :cond_1
    move v6, v2

    move v3, v6

    goto :goto_0

    .line 286
    :cond_2
    move-object v6, v0

    const/16 v7, 0x200

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public renderToPicture(II)Landroid/graphics/Picture;
    .locals 14

    .prologue
    .line 300
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    new-instance v7, Landroid/graphics/Picture;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Picture;-><init>()V

    move-object v3, v7

    .line 301
    move-object v7, v3

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v7

    move-object v4, v7

    .line 302
    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v1

    int-to-float v11, v11

    move v12, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v5, v7

    .line 304
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v4

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    move-object v6, v7

    .line 306
    move-object v7, v6

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 308
    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Picture;->endRecording()V

    .line 309
    move-object v7, v3

    move-object v0, v7

    return-object v0
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVG;->renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 408
    return-void
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 15

    .prologue
    .line 427
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v8

    move-object v4, v8

    .line 428
    move-object v8, v4

    if-nez v8, :cond_0

    .line 451
    :goto_0
    return-void

    .line 430
    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lcom/caverock/androidsvg/SVG$View;

    if-nez v8, :cond_1

    .line 431
    goto :goto_0

    .line 433
    :cond_1
    move-object v8, v4

    check-cast v8, Lcom/caverock/androidsvg/SVG$View;

    move-object v5, v8

    .line 435
    move-object v8, v5

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v8, :cond_2

    .line 436
    const-string v8, "AndroidSVG"

    const-string v9, "View element is missing a viewBox attribute."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 437
    goto :goto_0

    .line 442
    :cond_2
    move-object v8, v3

    if-eqz v8, :cond_3

    .line 443
    move-object v8, v3

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object v10, v3

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v8

    move-object v6, v8

    .line 448
    :goto_1
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    move-object v11, v6

    move-object v12, v0

    iget v12, v12, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    move-object v7, v8

    .line 450
    move-object v8, v7

    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v11, v5

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$View;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 451
    goto :goto_0

    .line 445
    :cond_3
    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v12}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v6, v8

    goto :goto_1
.end method

.method public renderViewToPicture(Ljava/lang/String;II)Landroid/graphics/Picture;
    .locals 17

    .prologue
    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v10

    move-object v4, v10

    .line 329
    move-object v10, v4

    if-nez v10, :cond_0

    .line 330
    const/4 v10, 0x0

    move-object v0, v10

    .line 350
    :goto_0
    return-object v0

    .line 331
    :cond_0
    move-object v10, v4

    instance-of v10, v10, Lcom/caverock/androidsvg/SVG$View;

    if-nez v10, :cond_1

    .line 332
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 334
    :cond_1
    move-object v10, v4

    check-cast v10, Lcom/caverock/androidsvg/SVG$View;

    move-object v5, v10

    .line 336
    move-object v10, v5

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v10, :cond_2

    .line 337
    const-string v10, "AndroidSVG"

    const-string v11, "View element is missing a viewBox attribute."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 338
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 341
    :cond_2
    new-instance v10, Landroid/graphics/Picture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Picture;-><init>()V

    move-object v6, v10

    .line 342
    move-object v10, v6

    move v11, v2

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v10

    move-object v7, v10

    .line 343
    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v2

    int-to-float v14, v14

    move v15, v3

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v8, v10

    .line 345
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v7

    move-object v13, v8

    move-object v14, v0

    iget v14, v14, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v11, v12, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    move-object v9, v10

    .line 347
    move-object v10, v9

    move-object v11, v0

    move-object v12, v5

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v13, v5

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$View;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 349
    move-object v10, v6

    invoke-virtual {v10}, Landroid/graphics/Picture;->endRecording()V

    .line 350
    move-object v10, v6

    move-object v0, v10

    goto :goto_0
.end method

.method protected resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 5

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 796
    const/4 v2, 0x0

    move-object v0, v2

    .line 802
    :goto_0
    return-object v0

    .line 798
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object v2, v1

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 802
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method protected setDesc(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1885
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method public setDocumentHeight(F)V
    .locals 7

    .prologue
    .line 630
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v2, :cond_0

    .line 631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "SVG document is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 634
    return-void
.end method

.method public setDocumentHeight(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v3, :cond_0

    .line 648
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "SVG document is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v4, v1

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    return-void

    .line 652
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 653
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 6

    .prologue
    .line 714
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v2, :cond_0

    .line 715
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "SVG document is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 717
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 718
    return-void
.end method

.method public setDocumentViewBox(FFFF)V
    .locals 13

    .prologue
    .line 678
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v5, :cond_0

    .line 679
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "SVG document is empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 681
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 682
    return-void
.end method

.method public setDocumentWidth(F)V
    .locals 7

    .prologue
    .line 572
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v2, :cond_0

    .line 573
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "SVG document is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 576
    return-void
.end method

.method public setDocumentWidth(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v3, :cond_0

    .line 590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "SVG document is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 593
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    move-object v4, v1

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    return-void

    .line 594
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 595
    new-instance v3, Lcom/caverock/androidsvg/SVGParseException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRenderDPI(F)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 237
    return-void
.end method

.method protected setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 790
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1879
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 1880
    return-void
.end method
