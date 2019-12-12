.class public Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I = null

.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final LUMINANCE_FACTOR_SHIFT:I = 0xf

.field private static final LUMINANCE_TO_ALPHA_BLUE:I = 0x93a

.field private static final LUMINANCE_TO_ALPHA_GREEN:I = 0x5b92

.field private static final LUMINANCE_TO_ALPHA_RED:I = 0x1b33

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"


# instance fields
.field private bitmapStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;

.field private canvasStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

.field private directRenderingMode:Z

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I
    .locals 5

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    :try_start_2
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    :try_start_3
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object v1, v0

    :try_start_4
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    move-object v1, v0

    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    move-object v1, v0

    :try_start_6
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    move-object v1, v0

    :try_start_7
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    move-object v1, v0

    :try_start_8
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    move-object v1, v0

    :try_start_9
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_a
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I
    .locals 5

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I
    .locals 5

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    :try_start_2
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I
    .locals 5

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    :try_start_2
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 208
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 209
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 210
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 211
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 2

    .prologue
    .line 1879
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 20

    .prologue
    .line 2463
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 8

    .prologue
    .line 3594
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3596
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3620
    :goto_0
    return-void

    .line 3598
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3599
    goto :goto_0

    .line 3601
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_2

    .line 3602
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 3605
    :cond_2
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v5, :cond_3

    .line 3606
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v5

    move-object v4, v5

    .line 3616
    :goto_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3618
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3619
    move-object v5, v2

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3620
    goto :goto_0

    .line 3607
    :cond_3
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v5, :cond_4

    .line 3608
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3609
    :cond_4
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v5, :cond_5

    .line 3610
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3611
    :cond_5
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v5, :cond_6

    .line 3612
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3614
    :cond_6
    goto :goto_0
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 10

    .prologue
    .line 3569
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3571
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3589
    :goto_0
    return-void

    .line 3573
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3574
    goto :goto_0

    .line 3576
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_2

    .line 3577
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 3579
    :cond_2
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v5

    move-object v4, v5

    .line 3581
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_3

    .line 3582
    move-object v5, v1

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v6

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3584
    :cond_3
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3587
    move-object v5, v2

    move-object v6, v0

    invoke-direct {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3588
    move-object v5, v2

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3589
    goto :goto_0
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 11

    .prologue
    .line 3503
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3527
    :goto_0
    return-void

    .line 3507
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3509
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v5, :cond_2

    .line 3510
    move v5, v2

    if-eqz v5, :cond_1

    .line 3511
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Use;

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3526
    :goto_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3527
    goto :goto_0

    .line 3513
    :cond_1
    const-string v5, "<use> elements inside a <clipPath> cannot reference another <use>"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3515
    goto :goto_1

    :cond_2
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v5, :cond_3

    .line 3516
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Path;

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3517
    goto :goto_1

    :cond_3
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v5, :cond_4

    .line 3518
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Text;

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3519
    goto :goto_1

    :cond_4
    move-object v5, v1

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v5, :cond_5

    .line 3520
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3521
    goto :goto_1

    .line 3522
    :cond_5
    const-string v5, "Invalid %s element found in clipPath definition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 18

    .prologue
    .line 3650
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3652
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3686
    :goto_0
    return-void

    .line 3655
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_1

    .line 3656
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v9

    .line 3659
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-eqz v9, :cond_2

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_8

    :cond_2
    const/4 v9, 0x0

    :goto_1
    move v4, v9

    .line 3660
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v9, :cond_3

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    :cond_3
    const/4 v9, 0x0

    :goto_2
    move v5, v9

    .line 3661
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v9, :cond_4

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    :cond_4
    const/4 v9, 0x0

    :goto_3
    move v6, v9

    .line 3662
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v9, :cond_5

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    :cond_5
    const/4 v9, 0x0

    :goto_4
    move v7, v9

    .line 3665
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v9, v10, :cond_6

    .line 3666
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v9

    move v8, v9

    .line 3667
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v9, v10, :cond_c

    .line 3668
    move v9, v4

    move v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v4, v9

    .line 3674
    :cond_6
    :goto_5
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v9, :cond_7

    .line 3675
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move v12, v4

    move v13, v5

    invoke-direct {v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    move-object v8, v9

    .line 3676
    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3677
    move-object v9, v1

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v8

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object v13, v8

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    move-object v14, v8

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    move-object v15, v8

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3679
    :cond_7
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3681
    new-instance v9, Landroid/graphics/Path;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    move-object v8, v9

    .line 3682
    move-object v9, v0

    move-object v10, v1

    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move v14, v4

    move v15, v6

    add-float/2addr v14, v15

    move v15, v5

    move/from16 v16, v7

    add-float v15, v15, v16

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3684
    move-object v9, v2

    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3685
    move-object v9, v2

    move-object v10, v8

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3686
    goto/16 :goto_0

    .line 3659
    :cond_8
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto/16 :goto_1

    .line 3660
    :cond_9
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto/16 :goto_2

    .line 3661
    :cond_a
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto/16 :goto_3

    .line 3662
    :cond_b
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto/16 :goto_4

    .line 3670
    :cond_c
    move v9, v4

    move v10, v8

    sub-float/2addr v9, v10

    move v4, v9

    goto/16 :goto_5
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 11

    .prologue
    .line 3625
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3627
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3645
    :goto_0
    return-void

    .line 3629
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3630
    goto :goto_0

    .line 3632
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_2

    .line 3633
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 3636
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    move-object v4, v5

    .line 3637
    move-object v5, v4

    if-nez v5, :cond_3

    .line 3638
    const-string v5, "Use reference \'%s\' not found"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3639
    goto :goto_0

    .line 3642
    :cond_3
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3644
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3645
    goto :goto_0
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 82

    .prologue
    .line 2465
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v72, v2

    move/from16 v73, v9

    cmpl-float v72, v72, v73

    if-nez v72, :cond_0

    move/from16 v72, v3

    move/from16 v73, v10

    cmpl-float v72, v72, v73

    if-nez v72, :cond_0

    .line 2580
    :goto_0
    return-void

    .line 2473
    :cond_0
    move/from16 v72, v4

    const/16 v73, 0x0

    cmpl-float v72, v72, v73

    if-eqz v72, :cond_1

    move/from16 v72, v5

    const/16 v73, 0x0

    cmpl-float v72, v72, v73

    if-nez v72, :cond_2

    .line 2474
    :cond_1
    move-object/from16 v72, v11

    move/from16 v73, v9

    move/from16 v74, v10

    invoke-interface/range {v72 .. v74}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2475
    goto :goto_0

    .line 2479
    :cond_2
    move/from16 v72, v4

    invoke-static/range {v72 .. v72}, Ljava/lang/Math;->abs(F)F

    move-result v72

    move/from16 v4, v72

    .line 2480
    move/from16 v72, v5

    invoke-static/range {v72 .. v72}, Ljava/lang/Math;->abs(F)F

    move-result v72

    move/from16 v5, v72

    .line 2483
    move/from16 v72, v6

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide v74, 0x4076800000000000L    # 360.0

    rem-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v72

    move-wide/from16 v0, v72

    double-to-float v0, v0

    move/from16 v72, v0

    move/from16 v12, v72

    .line 2484
    move/from16 v72, v12

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->cos(D)D

    move-result-wide v72

    move-wide/from16 v13, v72

    .line 2485
    move/from16 v72, v12

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sin(D)D

    move-result-wide v72

    move-wide/from16 v15, v72

    .line 2492
    move/from16 v72, v2

    move/from16 v73, v9

    sub-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    div-double v72, v72, v74

    move-wide/from16 v17, v72

    .line 2493
    move/from16 v72, v3

    move/from16 v73, v10

    sub-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    div-double v72, v72, v74

    move-wide/from16 v19, v72

    .line 2496
    move-wide/from16 v72, v13

    move-wide/from16 v74, v17

    mul-double v72, v72, v74

    move-wide/from16 v74, v15

    move-wide/from16 v76, v19

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v21, v72

    .line 2497
    move-wide/from16 v72, v15

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v17

    mul-double v72, v72, v74

    move-wide/from16 v74, v13

    move-wide/from16 v76, v19

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v23, v72

    .line 2499
    move/from16 v72, v4

    move/from16 v73, v4

    mul-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v25, v72

    .line 2500
    move/from16 v72, v5

    move/from16 v73, v5

    mul-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v27, v72

    .line 2501
    move-wide/from16 v72, v21

    move-wide/from16 v74, v21

    mul-double v72, v72, v74

    move-wide/from16 v29, v72

    .line 2502
    move-wide/from16 v72, v23

    move-wide/from16 v74, v23

    mul-double v72, v72, v74

    move-wide/from16 v31, v72

    .line 2507
    move-wide/from16 v72, v29

    move-wide/from16 v74, v25

    div-double v72, v72, v74

    move-wide/from16 v74, v31

    move-wide/from16 v76, v27

    div-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v33, v72

    .line 2508
    move-wide/from16 v72, v33

    const-wide/high16 v74, 0x3ff0000000000000L    # 1.0

    cmpl-double v72, v72, v74

    if-lez v72, :cond_3

    .line 2509
    move-wide/from16 v72, v33

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v72

    move-wide/from16 v0, v72

    double-to-float v0, v0

    move/from16 v72, v0

    move/from16 v73, v4

    mul-float v72, v72, v73

    move/from16 v4, v72

    .line 2510
    move-wide/from16 v72, v33

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v72

    move-wide/from16 v0, v72

    double-to-float v0, v0

    move/from16 v72, v0

    move/from16 v73, v5

    mul-float v72, v72, v73

    move/from16 v5, v72

    .line 2511
    move/from16 v72, v4

    move/from16 v73, v4

    mul-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v25, v72

    .line 2512
    move/from16 v72, v5

    move/from16 v73, v5

    mul-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v27, v72

    .line 2516
    :cond_3
    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5

    const/16 v72, -0x1

    :goto_1
    move/from16 v0, v72

    int-to-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v35, v72

    .line 2517
    move-wide/from16 v72, v25

    move-wide/from16 v74, v27

    mul-double v72, v72, v74

    move-wide/from16 v74, v25

    move-wide/from16 v76, v31

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v74, v27

    move-wide/from16 v76, v29

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    move-wide/from16 v74, v25

    move-wide/from16 v76, v31

    mul-double v74, v74, v76

    move-wide/from16 v76, v27

    move-wide/from16 v78, v29

    mul-double v76, v76, v78

    add-double v74, v74, v76

    div-double v72, v72, v74

    move-wide/from16 v37, v72

    .line 2518
    move-wide/from16 v72, v37

    const-wide/16 v74, 0x0

    cmpg-double v72, v72, v74

    if-gez v72, :cond_6

    const-wide/16 v72, 0x0

    :goto_2
    move-wide/from16 v37, v72

    .line 2519
    move-wide/from16 v72, v35

    move-wide/from16 v74, v37

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v74

    mul-double v72, v72, v74

    move-wide/from16 v39, v72

    .line 2520
    move-wide/from16 v72, v39

    move/from16 v74, v4

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v76, v23

    mul-double v74, v74, v76

    move/from16 v76, v5

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    div-double v74, v74, v76

    mul-double v72, v72, v74

    move-wide/from16 v41, v72

    .line 2521
    move-wide/from16 v72, v39

    move/from16 v74, v5

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    move-wide/from16 v76, v21

    mul-double v74, v74, v76

    move/from16 v76, v4

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    div-double v74, v74, v76

    move-wide/from16 v0, v74

    neg-double v0, v0

    move-wide/from16 v74, v0

    mul-double v72, v72, v74

    move-wide/from16 v43, v72

    .line 2524
    move/from16 v72, v2

    move/from16 v73, v9

    add-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    div-double v72, v72, v74

    move-wide/from16 v45, v72

    .line 2525
    move/from16 v72, v3

    move/from16 v73, v10

    add-float v72, v72, v73

    move/from16 v0, v72

    float-to-double v0, v0

    move-wide/from16 v72, v0

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    div-double v72, v72, v74

    move-wide/from16 v47, v72

    .line 2526
    move-wide/from16 v72, v45

    move-wide/from16 v74, v13

    move-wide/from16 v76, v41

    mul-double v74, v74, v76

    move-wide/from16 v76, v15

    move-wide/from16 v78, v43

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v49, v72

    .line 2527
    move-wide/from16 v72, v47

    move-wide/from16 v74, v15

    move-wide/from16 v76, v41

    mul-double v74, v74, v76

    move-wide/from16 v76, v13

    move-wide/from16 v78, v43

    mul-double v76, v76, v78

    add-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v51, v72

    .line 2530
    move-wide/from16 v72, v21

    move-wide/from16 v74, v41

    sub-double v72, v72, v74

    move/from16 v74, v4

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    move-wide/from16 v53, v72

    .line 2531
    move-wide/from16 v72, v23

    move-wide/from16 v74, v43

    sub-double v72, v72, v74

    move/from16 v74, v5

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    move-wide/from16 v55, v72

    .line 2532
    move-wide/from16 v72, v21

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v41

    sub-double v72, v72, v74

    move/from16 v74, v4

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    move-wide/from16 v57, v72

    .line 2533
    move-wide/from16 v72, v23

    move-wide/from16 v0, v72

    neg-double v0, v0

    move-wide/from16 v72, v0

    move-wide/from16 v74, v43

    sub-double v72, v72, v74

    move/from16 v74, v5

    move/from16 v0, v74

    float-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    move-wide/from16 v59, v72

    .line 2537
    move-wide/from16 v72, v53

    move-wide/from16 v74, v53

    mul-double v72, v72, v74

    move-wide/from16 v74, v55

    move-wide/from16 v76, v55

    mul-double v74, v74, v76

    add-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v72

    move-wide/from16 v63, v72

    .line 2538
    move-wide/from16 v72, v53

    move-wide/from16 v61, v72

    .line 2539
    move-wide/from16 v72, v55

    const-wide/16 v74, 0x0

    cmpg-double v72, v72, v74

    if-gez v72, :cond_7

    const-wide/high16 v72, -0x4010000000000000L    # -1.0

    :goto_3
    move-wide/from16 v35, v72

    .line 2540
    move-wide/from16 v72, v35

    move-wide/from16 v74, v61

    move-wide/from16 v76, v63

    div-double v74, v74, v76

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->acos(D)D

    move-result-wide v74

    mul-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v72

    move-wide/from16 v65, v72

    .line 2543
    move-wide/from16 v72, v53

    move-wide/from16 v74, v53

    mul-double v72, v72, v74

    move-wide/from16 v74, v55

    move-wide/from16 v76, v55

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v74, v57

    move-wide/from16 v76, v57

    mul-double v74, v74, v76

    move-wide/from16 v76, v59

    move-wide/from16 v78, v59

    mul-double v76, v76, v78

    add-double v74, v74, v76

    mul-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v72

    move-wide/from16 v63, v72

    .line 2544
    move-wide/from16 v72, v53

    move-wide/from16 v74, v57

    mul-double v72, v72, v74

    move-wide/from16 v74, v55

    move-wide/from16 v76, v59

    mul-double v74, v74, v76

    add-double v72, v72, v74

    move-wide/from16 v61, v72

    .line 2545
    move-wide/from16 v72, v53

    move-wide/from16 v74, v59

    mul-double v72, v72, v74

    move-wide/from16 v74, v55

    move-wide/from16 v76, v57

    mul-double v74, v74, v76

    sub-double v72, v72, v74

    const-wide/16 v74, 0x0

    cmpg-double v72, v72, v74

    if-gez v72, :cond_8

    const-wide/high16 v72, -0x4010000000000000L    # -1.0

    :goto_4
    move-wide/from16 v35, v72

    .line 2546
    move-wide/from16 v72, v35

    move-wide/from16 v74, v61

    move-wide/from16 v76, v63

    div-double v74, v74, v76

    invoke-static/range {v74 .. v75}, Ljava/lang/Math;->acos(D)D

    move-result-wide v74

    mul-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v72

    move-wide/from16 v67, v72

    .line 2547
    move/from16 v72, v8

    if-nez v72, :cond_9

    move-wide/from16 v72, v67

    const-wide/16 v74, 0x0

    cmpl-double v72, v72, v74

    if-lez v72, :cond_9

    .line 2548
    move-wide/from16 v72, v67

    const-wide v74, 0x4076800000000000L    # 360.0

    sub-double v72, v72, v74

    move-wide/from16 v67, v72

    .line 2552
    :cond_4
    :goto_5
    move-wide/from16 v72, v67

    const-wide v74, 0x4076800000000000L    # 360.0

    rem-double v72, v72, v74

    move-wide/from16 v67, v72

    .line 2553
    move-wide/from16 v72, v65

    const-wide v74, 0x4076800000000000L    # 360.0

    rem-double v72, v72, v74

    move-wide/from16 v65, v72

    .line 2559
    move-wide/from16 v72, v65

    move-wide/from16 v74, v67

    invoke-static/range {v72 .. v75}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v72

    move-object/from16 v69, v72

    .line 2562
    new-instance v72, Landroid/graphics/Matrix;

    move-object/from16 v81, v72

    move-object/from16 v72, v81

    move-object/from16 v73, v81

    invoke-direct/range {v73 .. v73}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v70, v72

    .line 2563
    move-object/from16 v72, v70

    move/from16 v73, v4

    move/from16 v74, v5

    invoke-virtual/range {v72 .. v74}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v72

    .line 2564
    move-object/from16 v72, v70

    move/from16 v73, v6

    invoke-virtual/range {v72 .. v73}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v72

    .line 2565
    move-object/from16 v72, v70

    move-wide/from16 v73, v49

    move-wide/from16 v0, v73

    double-to-float v0, v0

    move/from16 v73, v0

    move-wide/from16 v74, v51

    move-wide/from16 v0, v74

    double-to-float v0, v0

    move/from16 v74, v0

    invoke-virtual/range {v72 .. v74}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v72

    .line 2566
    move-object/from16 v72, v70

    move-object/from16 v73, v69

    invoke-virtual/range {v72 .. v73}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2572
    move-object/from16 v72, v69

    move-object/from16 v73, v69

    move-object/from16 v0, v73

    array-length v0, v0

    move/from16 v73, v0

    const/16 v74, 0x2

    add-int/lit8 v73, v73, -0x2

    move/from16 v74, v9

    aput v74, v72, v73

    .line 2573
    move-object/from16 v72, v69

    move-object/from16 v73, v69

    move-object/from16 v0, v73

    array-length v0, v0

    move/from16 v73, v0

    const/16 v74, 0x1

    add-int/lit8 v73, v73, -0x1

    move/from16 v74, v10

    aput v74, v72, v73

    .line 2576
    const/16 v72, 0x0

    move/from16 v71, v72

    :goto_6
    move/from16 v72, v71

    move-object/from16 v73, v69

    move-object/from16 v0, v73

    array-length v0, v0

    move/from16 v73, v0

    move/from16 v0, v72

    move/from16 v1, v73

    if-lt v0, v1, :cond_a

    .line 2580
    goto/16 :goto_0

    .line 2516
    :cond_5
    const/16 v72, 0x1

    goto/16 :goto_1

    .line 2518
    :cond_6
    move-wide/from16 v72, v37

    goto/16 :goto_2

    .line 2539
    :cond_7
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3

    .line 2545
    :cond_8
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_4

    .line 2549
    :cond_9
    move/from16 v72, v8

    if-eqz v72, :cond_4

    move-wide/from16 v72, v67

    const-wide/16 v74, 0x0

    cmpg-double v72, v72, v74

    if-gez v72, :cond_4

    .line 2550
    move-wide/from16 v72, v67

    const-wide v74, 0x4076800000000000L    # 360.0

    add-double v72, v72, v74

    move-wide/from16 v67, v72

    goto/16 :goto_5

    .line 2578
    :cond_a
    move-object/from16 v72, v11

    move-object/from16 v73, v69

    move/from16 v74, v71

    aget v73, v73, v74

    move-object/from16 v74, v69

    move/from16 v75, v71

    const/16 v76, 0x1

    add-int/lit8 v75, v75, 0x1

    aget v74, v74, v75

    move-object/from16 v75, v69

    move/from16 v76, v71

    const/16 v77, 0x2

    add-int/lit8 v76, v76, 0x2

    aget v75, v75, v76

    move-object/from16 v76, v69

    move/from16 v77, v71

    const/16 v78, 0x3

    add-int/lit8 v77, v77, 0x3

    aget v76, v76, v77

    move-object/from16 v77, v69

    move/from16 v78, v71

    const/16 v79, 0x4

    add-int/lit8 v78, v78, 0x4

    aget v77, v77, v78

    move-object/from16 v78, v69

    move/from16 v79, v71

    const/16 v80, 0x5

    add-int/lit8 v79, v79, 0x5

    aget v78, v78, v79

    invoke-interface/range {v72 .. v78}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2576
    add-int/lit8 v71, v71, 0x6

    goto :goto_6
.end method

.method private static arcToBeziers(DD)[F
    .locals 27

    .prologue
    .line 2599
    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v19, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide v21, 0x4056800000000000L    # 90.0

    div-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v6, v19

    .line 2601
    move-wide/from16 v19, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    move-wide/from16 v2, v19

    .line 2602
    move-wide/from16 v19, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    move-wide/from16 v4, v19

    .line 2603
    move-wide/from16 v19, v4

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v7, v19

    .line 2606
    const-wide v19, 0x3ff5555555555555L    # 1.3333333333333333

    move/from16 v21, v7

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move/from16 v23, v7

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    add-double v21, v21, v23

    div-double v19, v19, v21

    move-wide/from16 v8, v19

    .line 2608
    move/from16 v19, v6

    const/16 v20, 0x6

    mul-int/lit8 v19, v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 2609
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 2611
    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_0
    move/from16 v19, v12

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 2630
    move-object/from16 v19, v10

    move-object/from16 v2, v19

    return-object v2

    .line 2613
    :cond_0
    move-wide/from16 v19, v2

    move/from16 v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v7

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v13, v19

    .line 2615
    move-wide/from16 v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v15, v19

    .line 2616
    move-wide/from16 v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 2618
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v15

    move-wide/from16 v23, v8

    move-wide/from16 v25, v17

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2619
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v17

    move-wide/from16 v23, v8

    move-wide/from16 v25, v15

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2621
    move-wide/from16 v19, v13

    move/from16 v21, v7

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v13, v19

    .line 2622
    move-wide/from16 v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v15, v19

    .line 2623
    move-wide/from16 v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 2624
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v15

    move-wide/from16 v23, v8

    move-wide/from16 v25, v17

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2625
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v17

    move-wide/from16 v23, v8

    move-wide/from16 v25, v15

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2627
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v15

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2628
    move-object/from16 v19, v10

    move/from16 v20, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v21, v17

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2611
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_0
    move v2, v7

    .line 1161
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_1
    move v3, v7

    .line 1162
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_2
    move v4, v7

    .line 1163
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_3

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_3
    move v5, v7

    .line 1165
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 1166
    move-object v7, v6

    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v2

    sub-float/2addr v13, v14

    move v14, v5

    move v15, v3

    sub-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1167
    move-object v7, v6

    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move v11, v4

    move v12, v5

    move v13, v4

    move v14, v2

    sub-float/2addr v13, v14

    move v14, v5

    move v15, v3

    sub-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1168
    move-object v7, v6

    move-object v0, v7

    return-object v0

    .line 1160
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1161
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1162
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1163
    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v10, v10

    move v3, v10

    .line 1219
    move v10, v3

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 1220
    const/4 v10, 0x0

    move-object v1, v10

    .line 1252
    :goto_0
    return-object v1

    .line 1222
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 1223
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object v14, v2

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v5, v10

    .line 1224
    const/4 v10, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    .line 1226
    const/4 v10, 0x2

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v3

    if-lt v10, v11, :cond_2

    .line 1236
    move-object v10, v2

    instance-of v10, v10, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v10, :cond_3

    .line 1237
    move v10, v6

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    move v10, v7

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 1238
    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move v6, v10

    .line 1239
    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move v7, v10

    .line 1240
    move-object v10, v5

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1241
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1244
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v6

    move v14, v7

    move v15, v6

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move/from16 v16, v7

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v8, v10

    .line 1245
    move-object v10, v8

    move-object v11, v4

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1246
    move-object v10, v4

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1247
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1252
    :cond_1
    :goto_2
    move-object v10, v4

    move-object v1, v10

    goto/16 :goto_0

    .line 1227
    :cond_2
    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    move v11, v8

    aget v10, v10, v11

    move v6, v10

    .line 1228
    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move v7, v10

    .line 1229
    move-object v10, v5

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1230
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1231
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v6

    move v14, v7

    move v15, v6

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move/from16 v16, v7

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v9, v10

    .line 1232
    move-object v10, v9

    move-object v5, v10

    .line 1226
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_1

    .line 1250
    :cond_3
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 10

    .prologue
    .line 1000
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/graphics/RectF;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object v2, v3

    .line 1001
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1002
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v3

    return-object v0
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 8

    .prologue
    .line 1612
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V

    move-object v2, v3

    .line 1613
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1614
    move-object v3, v2

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    move v0, v3

    return v0
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 16

    .prologue
    .line 1901
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v12, Landroid/graphics/Matrix;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v12

    .line 1903
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v12

    if-nez v12, :cond_1

    .line 1904
    :cond_0
    move-object v12, v4

    move-object v0, v12

    .line 1964
    :goto_0
    return-object v0

    .line 1906
    :cond_1
    move-object v12, v1

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v12, v13

    move v5, v12

    .line 1907
    move-object v12, v1

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v12, v13

    move v6, v12

    .line 1908
    move-object v12, v2

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v12, v12

    move v7, v12

    .line 1909
    move-object v12, v2

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v12, v12

    move v8, v12

    .line 1912
    move-object v12, v3

    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1914
    move-object v12, v4

    move-object v13, v1

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v14, v1

    iget v14, v14, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    .line 1915
    move-object v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v12

    .line 1916
    move-object v12, v4

    move v13, v7

    move v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    .line 1917
    move-object v12, v4

    move-object v0, v12

    goto :goto_0

    .line 1922
    :cond_2
    move-object v12, v3

    invoke-virtual {v12}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v12

    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v12, v13, :cond_3

    move v12, v5

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :goto_1
    move v9, v12

    .line 1924
    move-object v12, v1

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v13, v9

    div-float/2addr v12, v13

    move v10, v12

    .line 1925
    move-object v12, v1

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v13, v9

    div-float/2addr v12, v13

    move v11, v12

    .line 1927
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1941
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v12

    .line 1944
    move-object v13, v3

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    .line 1961
    :goto_3
    move-object v12, v4

    move-object v13, v1

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v14, v1

    iget v14, v14, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    .line 1962
    move-object v12, v4

    move v13, v9

    move v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v12

    .line 1963
    move-object v12, v4

    move v13, v7

    move v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v12

    .line 1964
    move-object v12, v4

    move-object v0, v12

    goto/16 :goto_0

    .line 1922
    :cond_3
    move v12, v5

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    goto :goto_1

    .line 1932
    :pswitch_1
    move v12, v7

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v14, v10

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v7, v12

    .line 1933
    goto :goto_2

    .line 1937
    :pswitch_2
    move v12, v7

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v14, v10

    sub-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v7, v12

    .line 1938
    goto :goto_2

    .line 1949
    :pswitch_3
    move v12, v8

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v14, v11

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 1950
    goto :goto_3

    .line 1954
    :pswitch_4
    move v12, v8

    move-object v13, v2

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v14, v11

    sub-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 1955
    goto :goto_3

    .line 1927
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1944
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 5

    .prologue
    .line 3439
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3440
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 16

    .prologue
    .line 3445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 3498
    :goto_0
    return-void

    .line 3449
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v9

    move-object v3, v9

    .line 3450
    move-object v9, v3

    if-nez v9, :cond_1

    .line 3451
    const-string v9, "ClipPath reference \'%s\' not found"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3452
    goto :goto_0

    .line 3455
    :cond_1
    move-object v9, v3

    check-cast v9, Lcom/caverock/androidsvg/SVG$ClipPath;

    move-object v4, v9

    .line 3458
    move-object v9, v4

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3459
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v9

    .line 3460
    goto :goto_0

    .line 3463
    :cond_2
    move-object v9, v4

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v9, :cond_3

    move-object v9, v4

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    :goto_1
    move v5, v9

    .line 3465
    move-object v9, v1

    instance-of v9, v9, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v9, :cond_4

    move v9, v5

    if-nez v9, :cond_4

    .line 3466
    const-string v9, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3467
    goto :goto_0

    .line 3463
    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    .line 3470
    :cond_4
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3472
    move v9, v5

    if-nez v9, :cond_5

    .line 3474
    new-instance v9, Landroid/graphics/Matrix;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object v6, v9

    .line 3475
    move-object v9, v6

    move-object v10, v2

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v11, v2

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v9

    .line 3476
    move-object v9, v6

    move-object v10, v2

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v11, v2

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v9

    .line 3477
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3479
    :cond_5
    move-object v9, v4

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_6

    .line 3481
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v4

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3486
    :cond_6
    move-object v9, v0

    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v10

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3488
    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3490
    new-instance v9, Landroid/graphics/Path;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    move-object v6, v9

    .line 3491
    move-object v9, v4

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v8, v9

    :goto_2
    move-object v9, v8

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 3495
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v9

    .line 3497
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3498
    goto/16 :goto_0

    .line 3491
    :cond_7
    move-object v9, v8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v7, v9

    .line 3493
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v6

    new-instance v13, Landroid/graphics/Matrix;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_2
.end method

.method private checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 6

    .prologue
    .line 3055
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v2, :cond_0

    .line 3056
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v5, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3058
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v2, :cond_1

    .line 3059
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v5, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3061
    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 1856
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "data:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1857
    const/4 v4, 0x0

    move-object v0, v4

    .line 1867
    :goto_0
    return-object v0

    .line 1858
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    .line 1859
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 1861
    :cond_1
    move-object v4, v1

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v2, v4

    .line 1862
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    .line 1863
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 1864
    :cond_3
    const-string v4, ";base64"

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x7

    add-int/lit8 v6, v6, -0x7

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1865
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 1866
    :cond_4
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v3, v4

    .line 1867
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    array-length v6, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 2300
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v7, 0x0

    move-object v4, v7

    .line 2303
    move-object v7, v3

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 2304
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_3

    move v7, v6

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    :goto_1
    move v5, v7

    .line 2307
    move-object v7, v1

    const-string v8, "serif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2308
    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, v7

    .line 2318
    :cond_0
    :goto_2
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 2303
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2304
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 2305
    :cond_3
    move v7, v6

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2309
    :cond_5
    move-object v7, v1

    const-string v8, "sans-serif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2310
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, v7

    .line 2311
    goto :goto_2

    :cond_6
    move-object v7, v1

    const-string v8, "monospace"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2312
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, v7

    .line 2313
    goto :goto_2

    :cond_7
    move-object v7, v1

    const-string v8, "cursive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2314
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, v7

    .line 2315
    goto :goto_2

    :cond_8
    move-object v7, v1

    const-string v8, "fantasy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2316
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, v7

    goto :goto_2
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 5

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v3, :cond_0

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v2, v3

    .line 417
    move-object v3, v2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 419
    :cond_1
    goto :goto_0
.end method

.method private clamp255(F)I
    .locals 5

    .prologue
    .line 2324
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/high16 v4, 0x43800000    # 256.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 2325
    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method private clipStatePop()V
    .locals 3

    .prologue
    .line 3546
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3548
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3549
    return-void
.end method

.method private clipStatePush()V
    .locals 3

    .prologue
    .line 3536
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 3538
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3539
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3540
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 11

    .prologue
    .line 3069
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    move-object v4, v5

    .line 3070
    move-object v5, v4

    if-nez v5, :cond_3

    .line 3072
    const-string v5, "%s reference \'%s\' not found"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    if-eqz v9, :cond_0

    const-string v9, "Fill"

    :goto_0
    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3073
    move-object v5, v3

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v5, :cond_1

    .line 3074
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move v7, v1

    move-object v8, v3

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3090
    :goto_1
    return-void

    .line 3072
    :cond_0
    const-string v9, "Stroke"

    goto :goto_0

    .line 3076
    :cond_1
    move v5, v1

    if-eqz v5, :cond_2

    .line 3077
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    .line 3079
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_1

    .line 3083
    :cond_3
    move-object v5, v4

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v5, :cond_4

    .line 3084
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v4

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    .line 3085
    :cond_4
    move-object v5, v4

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v5, :cond_5

    .line 3086
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v4

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    .line 3087
    :cond_5
    move-object v5, v4

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v5, :cond_6

    .line 3088
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    check-cast v7, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    .line 3090
    :cond_6
    goto :goto_1
.end method

.method private display()Z
    .locals 2

    .prologue
    .line 1873
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1874
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .line 1875
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v5, :cond_0

    .line 430
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v6, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    move-object v3, v5

    .line 431
    move-object v5, v3

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v5, :cond_0

    .line 432
    move-object v5, v3

    check-cast v5, Lcom/caverock/androidsvg/SVG$Pattern;

    move-object v4, v5

    .line 433
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    goto :goto_0
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 11

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v7, v8, :cond_2

    .line 454
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v2, v7

    .line 456
    new-instance v7, Landroid/graphics/Path;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    move-object v3, v7

    .line 457
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 459
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/Matrix;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 462
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    move-object v4, v7

    .line 463
    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v7

    .line 464
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 465
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 466
    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v6, v7

    .line 467
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 468
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 472
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 477
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 478
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private duplicateCanvas()V
    .locals 7

    .prologue
    .line 740
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 741
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 742
    new-instance v3, Landroid/graphics/Canvas;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 743
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 744
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    return-void

    .line 745
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 746
    const-string v3, "Not enough memory to create temporary bitmaps for mask processing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    move-object v3, v1

    throw v3
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 11

    .prologue
    .line 1411
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-direct {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1414
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 1415
    const/4 v6, 0x1

    move v4, v6

    .line 1417
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1428
    goto :goto_0

    .line 1419
    :cond_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v5, v6

    .line 1421
    move-object v6, v5

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v6, :cond_3

    .line 1422
    move-object v6, v2

    move-object v7, v0

    move-object v8, v5

    check-cast v8, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    move v9, v4

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    :goto_2
    invoke-direct {v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1426
    :goto_3
    const/4 v6, 0x0

    move v4, v6

    goto :goto_1

    .line 1422
    :cond_2
    const/4 v10, 0x1

    goto :goto_2

    .line 1424
    :cond_3
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    goto :goto_3
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SVGAndroidRenderer"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 499
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 11

    .prologue
    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 1699
    const/4 v6, 0x1

    move v4, v6

    .line 1701
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1712
    return-void

    .line 1703
    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v5, v6

    .line 1705
    move-object v6, v5

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v6, :cond_2

    .line 1706
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Lcom/caverock/androidsvg/SVG$TextContainer;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1710
    :cond_1
    :goto_1
    const/4 v6, 0x0

    move v4, v6

    goto :goto_0

    .line 1707
    :cond_2
    move-object v6, v5

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v6, :cond_1

    .line 1708
    move-object v6, v2

    move-object v7, v0

    move-object v8, v5

    check-cast v8, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    move v9, v4

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_2
    invoke-direct {v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 3318
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    move-object v3, v6

    .line 3319
    move-object v6, v3

    if-nez v6, :cond_0

    .line 3321
    const-string v6, "Gradient reference \'%s\' not found"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3356
    :goto_0
    return-void

    .line 3324
    :cond_0
    move-object v6, v3

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v6, :cond_1

    .line 3325
    const-string v6, "Gradient href attributes must point to other gradient elements"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3326
    goto :goto_0

    .line 3328
    :cond_1
    move-object v6, v3

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 3329
    const-string v6, "Circular reference in gradient href attribute \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3330
    goto :goto_0

    .line 3333
    :cond_2
    move-object v6, v3

    check-cast v6, Lcom/caverock/androidsvg/SVG$GradientElement;

    move-object v4, v6

    .line 3335
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v6, :cond_3

    .line 3336
    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 3337
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v6, :cond_4

    .line 3338
    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 3339
    :cond_4
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v6, :cond_5

    .line 3340
    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 3341
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3342
    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    .line 3346
    :cond_6
    move-object v6, v1

    :try_start_0
    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v6, :cond_8

    .line 3347
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v8, v3

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    :goto_1
    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 3355
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3356
    :cond_7
    goto :goto_0

    .line 3349
    :cond_8
    move-object v6, v0

    move-object v7, v1

    :try_start_1
    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v8, v3

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3351
    goto :goto_1

    .line 3352
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 5

    .prologue
    .line 3361
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_0

    .line 3362
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3363
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_1

    .line 3364
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3365
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    .line 3366
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3367
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_3

    .line 3368
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3369
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 5

    .prologue
    .line 3374
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_0

    .line 3375
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3376
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_1

    .line 3377
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3378
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    .line 3379
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 3380
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_3

    .line 3381
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3382
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_4

    .line 3383
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3384
    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 4034
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    move-object v3, v5

    .line 4035
    move-object v5, v3

    if-nez v5, :cond_0

    .line 4037
    const-string v5, "Pattern reference \'%s\' not found"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4076
    :goto_0
    return-void

    .line 4040
    :cond_0
    move-object v5, v3

    instance-of v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v5, :cond_1

    .line 4041
    const-string v5, "Pattern href attributes must point to other pattern elements"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4042
    goto :goto_0

    .line 4044
    :cond_1
    move-object v5, v3

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 4045
    const-string v5, "Circular reference in pattern href attribute \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4046
    goto :goto_0

    .line 4049
    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/caverock/androidsvg/SVG$Pattern;

    move-object v4, v5

    .line 4051
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    .line 4052
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 4053
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    .line 4054
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 4055
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v5, :cond_5

    .line 4056
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 4057
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_6

    .line 4058
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 4059
    :cond_6
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_7

    .line 4060
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 4061
    :cond_7
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_8

    .line 4062
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 4063
    :cond_8
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_9

    .line 4064
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 4066
    :cond_9
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4067
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    .line 4068
    :cond_a
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_b

    .line 4069
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4070
    :cond_b
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v5, :cond_c

    .line 4071
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4074
    :cond_c
    move-object v5, v4

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 4075
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 4076
    :cond_d
    goto/16 :goto_0
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 32

    .prologue
    .line 3904
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    :goto_0
    move/from16 v6, v24

    .line 3908
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3909
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 3911
    :cond_0
    move/from16 v24, v6

    if-eqz v24, :cond_7

    .line 3913
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-virtual/range {v24 .. v25}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    :goto_1
    move/from16 v7, v24

    .line 3914
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-virtual/range {v24 .. v25}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    :goto_2
    move/from16 v8, v24

    .line 3915
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-virtual/range {v24 .. v25}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    :goto_3
    move/from16 v9, v24

    .line 3916
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-virtual/range {v24 .. v25}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    :goto_4
    move/from16 v10, v24

    .line 3930
    :goto_5
    move/from16 v24, v9

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_1

    move/from16 v24, v10

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_c

    .line 4024
    :cond_1
    :goto_6
    return-void

    .line 3904
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 3913
    :cond_3
    const/16 v24, 0x0

    goto :goto_1

    .line 3914
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 3915
    :cond_5
    const/16 v24, 0x0

    goto :goto_3

    .line 3916
    :cond_6
    const/16 v24, 0x0

    goto :goto_4

    .line 3921
    :cond_7
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v24 .. v26}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v24

    :goto_7
    move/from16 v7, v24

    .line 3922
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v24 .. v26}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v24

    :goto_8
    move/from16 v8, v24

    .line 3923
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v24 .. v26}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v24

    :goto_9
    move/from16 v9, v24

    .line 3924
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v24 .. v26}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v24

    :goto_a
    move/from16 v10, v24

    .line 3925
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v24, v0

    move/from16 v25, v7

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v7, v24

    .line 3926
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v24, v0

    move/from16 v25, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v8, v24

    .line 3927
    move/from16 v24, v9

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v9, v24

    .line 3928
    move/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v10, v24

    goto/16 :goto_5

    .line 3921
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 3922
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 3923
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 3924
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 3934
    :cond_c
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v24, v0

    :goto_b
    move-object/from16 v13, v24

    .line 3937
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3939
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v24

    .line 3942
    new-instance v24, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v26}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    move-object/from16 v14, v24

    .line 3943
    move-object/from16 v24, v2

    move-object/from16 v25, v14

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3944
    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3945
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move-object/from16 v27, v14

    invoke-direct/range {v25 .. v27}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3948
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v24, v0

    move-object/from16 v15, v24

    .line 3950
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 3952
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3956
    new-instance v24, Landroid/graphics/Matrix;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v16, v24

    .line 3957
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 3958
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x1

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x2

    .line 3959
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v27

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x4

    .line 3960
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v27

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x5

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v27

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x6

    .line 3961
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x7

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v27

    aput v27, v25, v26

    .line 3958
    move-object/from16 v17, v24

    .line 3962
    move-object/from16 v24, v16

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3964
    new-instance v24, Landroid/graphics/RectF;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v17

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v27, v17

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v28, v17

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v29, v17

    const/16 v30, 0x1

    aget v29, v29, v30

    invoke-direct/range {v25 .. v29}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v18, v24

    .line 3965
    const/16 v24, 0x2

    move/from16 v19, v24

    :goto_c
    move/from16 v24, v19

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 3971
    new-instance v24, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    move-object/from16 v29, v18

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move-object/from16 v29, v18

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v0

    move-object/from16 v30, v18

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    invoke-direct/range {v25 .. v29}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v15, v24

    .line 3975
    :cond_d
    move/from16 v24, v7

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v25, v0

    move/from16 v26, v7

    sub-float v25, v25, v26

    move/from16 v26, v9

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v9

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v11, v24

    .line 3976
    move/from16 v24, v8

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v25, v0

    move/from16 v26, v8

    sub-float v25, v25, v26

    move/from16 v26, v10

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v10

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v12, v24

    .line 3978
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v24

    move/from16 v16, v24

    .line 3979
    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v24

    move/from16 v17, v24

    .line 3980
    new-instance v24, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v9

    move/from16 v29, v10

    invoke-direct/range {v25 .. v29}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v18, v24

    .line 3981
    move/from16 v24, v12

    move/from16 v19, v24

    :goto_d
    move/from16 v24, v19

    move/from16 v25, v17

    cmpg-float v24, v24, v25

    if-ltz v24, :cond_14

    .line 4023
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4024
    goto/16 :goto_6

    .line 3934
    :cond_e
    sget-object v24, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_b

    .line 3966
    :cond_f
    move-object/from16 v24, v17

    move/from16 v25, v19

    aget v24, v24, v25

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_10

    move-object/from16 v24, v18

    move-object/from16 v25, v17

    move/from16 v26, v19

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 3967
    :cond_10
    move-object/from16 v24, v17

    move/from16 v25, v19

    aget v24, v24, v25

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_11

    move-object/from16 v24, v18

    move-object/from16 v25, v17

    move/from16 v26, v19

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 3968
    :cond_11
    move-object/from16 v24, v17

    move/from16 v25, v19

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget v24, v24, v25

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_12

    move-object/from16 v24, v18

    move-object/from16 v25, v17

    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 3969
    :cond_12
    move-object/from16 v24, v17

    move/from16 v25, v19

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget v24, v24, v25

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_13

    move-object/from16 v24, v18

    move-object/from16 v25, v17

    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 3965
    :cond_13
    add-int/lit8 v19, v19, 0x2

    goto/16 :goto_c

    .line 3983
    :cond_14
    move/from16 v24, v11

    move/from16 v20, v24

    :goto_e
    move/from16 v24, v20

    move/from16 v25, v16

    cmpg-float v24, v24, v25

    if-ltz v24, :cond_15

    .line 3981
    move/from16 v24, v19

    move/from16 v25, v10

    add-float v24, v24, v25

    move/from16 v19, v24

    goto/16 :goto_d

    .line 3985
    :cond_15
    move-object/from16 v24, v18

    move/from16 v25, v20

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 3986
    move-object/from16 v24, v18

    move/from16 v25, v19

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 3988
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3990
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_16

    .line 3991
    move-object/from16 v24, v2

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v25, v0

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v27, v0

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v28, v0

    invoke-direct/range {v24 .. v28}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3994
    :cond_16
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    .line 3996
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v18

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v27, v0

    move-object/from16 v28, v13

    invoke-direct/range {v25 .. v28}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4008
    :cond_17
    :goto_f
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v24

    move/from16 v21, v24

    .line 4011
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v23, v24

    :goto_10
    move-object/from16 v24, v23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1b

    .line 4015
    move/from16 v24, v21

    if-eqz v24, :cond_18

    .line 4016
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4019
    :cond_18
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3983
    move/from16 v24, v20

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v20, v24

    goto/16 :goto_e

    .line 4000
    :cond_19
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_1a

    const/16 v24, 0x0

    :goto_11
    move/from16 v21, v24

    .line 4002
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move/from16 v25, v20

    move/from16 v26, v19

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4003
    move/from16 v24, v21

    if-nez v24, :cond_17

    .line 4004
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_f

    .line 4000
    :cond_1a
    const/16 v24, 0x1

    goto :goto_11

    .line 4011
    :cond_1b
    move-object/from16 v24, v23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object/from16 v22, v24

    .line 4012
    move-object/from16 v24, v2

    move-object/from16 v25, v22

    invoke-direct/range {v24 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_10
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 7

    .prologue
    .line 3003
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    move-object v2, v3

    .line 3004
    move-object v3, v0

    move-object v4, v2

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3005
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 10

    .prologue
    .line 3011
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 3015
    :goto_0
    move-object v6, v1

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v6, :cond_0

    .line 3016
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3018
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v6, :cond_2

    .line 3024
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :goto_1
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3028
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v7

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3029
    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_1

    .line 3030
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3034
    :cond_1
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3037
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 3039
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 3020
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v1, v6

    .line 3014
    goto :goto_0

    .line 3024
    :cond_3
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v4, v6

    .line 3025
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_1
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 3

    .prologue
    .line 1352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v2, :cond_1

    .line 1353
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-object v0, v1

    .line 1356
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_1
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 3

    .prologue
    .line 3554
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v1, :cond_0

    .line 3555
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v1

    .line 3562
    :goto_0
    return-object v0

    .line 3556
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3562
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v1

    goto :goto_0

    .line 3559
    :pswitch_0
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object v0, v1

    goto :goto_0

    .line 3556
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 3

    .prologue
    .line 2331
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v1, :cond_0

    .line 2332
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v1

    .line 2339
    :goto_0
    return-object v0

    .line 2333
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2339
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v1

    goto :goto_0

    .line 2336
    :pswitch_0
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object v0, v1

    goto :goto_0

    .line 2333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SVGAndroidRenderer"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 512
    return-void
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 8

    .prologue
    .line 1970
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v1

    iget-wide v4, v4, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 32

    .prologue
    .line 3095
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3096
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3098
    :cond_0
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    :goto_0
    move/from16 v6, v22

    .line 3099
    move/from16 v22, v3

    if-eqz v22, :cond_4

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    :goto_1
    move-object/from16 v7, v22

    .line 3102
    move/from16 v22, v6

    if-eqz v22, :cond_9

    .line 3104
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v22

    move-object/from16 v12, v22

    .line 3105
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    :goto_2
    move/from16 v8, v22

    .line 3106
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    :goto_3
    move/from16 v9, v22

    .line 3107
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    :goto_4
    move/from16 v10, v22

    .line 3108
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    :goto_5
    move/from16 v11, v22

    .line 3119
    :goto_6
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3122
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3125
    new-instance v22, Landroid/graphics/Matrix;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v12, v22

    .line 3126
    move/from16 v22, v6

    if-nez v22, :cond_1

    .line 3128
    move-object/from16 v22, v12

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v22

    .line 3129
    move-object/from16 v22, v12

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v22

    .line 3131
    :cond_1
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 3133
    move-object/from16 v22, v12

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v22

    .line 3137
    :cond_2
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v13, v22

    .line 3138
    move/from16 v22, v13

    if-nez v22, :cond_f

    .line 3140
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3141
    move/from16 v22, v3

    if-eqz v22, :cond_e

    .line 3142
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3199
    :goto_7
    return-void

    .line 3098
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 3099
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 3105
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 3106
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 3107
    :cond_7
    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v22, v0

    goto/16 :goto_4

    .line 3108
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 3112
    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v24}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v22

    :goto_8
    move/from16 v8, v22

    .line 3113
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v24}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v22

    :goto_9
    move/from16 v9, v22

    .line 3114
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v24}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v22

    :goto_a
    move/from16 v10, v22

    .line 3115
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v24}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v22

    :goto_b
    move/from16 v11, v22

    goto/16 :goto_6

    .line 3112
    :cond_a
    const/16 v22, 0x0

    goto :goto_8

    .line 3113
    :cond_b
    const/16 v22, 0x0

    goto :goto_9

    .line 3114
    :cond_c
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_a

    .line 3115
    :cond_d
    const/16 v22, 0x0

    goto :goto_b

    .line 3144
    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_7

    .line 3148
    :cond_f
    move/from16 v22, v13

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v14, v22

    .line 3149
    move/from16 v22, v13

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v15, v22

    .line 3150
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 3151
    const/high16 v22, -0x40800000    # -1.0f

    move/from16 v17, v22

    .line 3152
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v19, v22

    :goto_c
    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_12

    .line 3177
    move/from16 v22, v8

    move/from16 v23, v10

    cmpl-float v22, v22, v23

    if-nez v22, :cond_10

    move/from16 v22, v9

    move/from16 v23, v11

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_11

    :cond_10
    move/from16 v22, v13

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 3178
    :cond_11
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3179
    move-object/from16 v22, v7

    move-object/from16 v23, v14

    move/from16 v24, v13

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 3180
    goto/16 :goto_7

    .line 3152
    :cond_12
    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object/from16 v18, v22

    .line 3154
    move-object/from16 v22, v18

    check-cast v22, Lcom/caverock/androidsvg/SVG$Stop;

    move-object/from16 v20, v22

    .line 3155
    move/from16 v22, v16

    if-eqz v22, :cond_13

    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v23, v17

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_15

    .line 3156
    :cond_13
    move-object/from16 v22, v15

    move/from16 v23, v16

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    aput v24, v22, v23

    .line 3157
    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v17, v22

    .line 3164
    :goto_d
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3166
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v23, v0

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3167
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-object/from16 v22, v0

    check-cast v22, Lcom/caverock/androidsvg/SVG$Colour;

    move-object/from16 v21, v22

    .line 3168
    move-object/from16 v22, v21

    if-nez v22, :cond_14

    .line 3169
    sget-object v22, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    move-object/from16 v21, v22

    .line 3170
    :cond_14
    move-object/from16 v22, v14

    move/from16 v23, v16

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    invoke-direct/range {v24 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v24

    const/16 v25, 0x18

    shl-int/lit8 v24, v24, 0x18

    move-object/from16 v25, v21

    move-object/from16 v0, v25

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v25, v0

    or-int v24, v24, v25

    aput v24, v22, v23

    .line 3171
    add-int/lit8 v16, v16, 0x1

    .line 3173
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_c

    .line 3161
    :cond_15
    move-object/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    aput v24, v22, v23

    goto :goto_d

    .line 3184
    :cond_16
    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v22

    .line 3185
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    .line 3187
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    sget-object v23, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 3188
    sget-object v22, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v22

    .line 3193
    :cond_17
    :goto_e
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3196
    new-instance v22, Landroid/graphics/LinearGradient;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v30, v18

    invoke-direct/range {v23 .. v30}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v19, v22

    .line 3197
    move-object/from16 v22, v19

    move-object/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3198
    move-object/from16 v22, v7

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v22

    .line 3199
    goto/16 :goto_7

    .line 3189
    :cond_18
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    sget-object v23, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 3190
    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v22

    goto :goto_e
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 20

    .prologue
    .line 3817
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    :goto_0
    move v2, v11

    .line 3818
    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_2

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    :goto_1
    move v3, v11

    .line 3819
    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    move v4, v11

    .line 3821
    move v11, v2

    move v12, v4

    sub-float/2addr v11, v12

    move v5, v11

    .line 3822
    move v11, v3

    move v12, v4

    sub-float/2addr v11, v12

    move v6, v11

    .line 3823
    move v11, v2

    move v12, v4

    add-float/2addr v11, v12

    move v7, v11

    .line 3824
    move v11, v3

    move v12, v4

    add-float/2addr v11, v12

    move v8, v11

    .line 3826
    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v11, :cond_0

    .line 3827
    move-object v11, v1

    new-instance v12, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move v14, v5

    move v15, v6

    move/from16 v16, v4

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    move/from16 v17, v4

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3830
    :cond_0
    move v11, v4

    const v12, 0x3f0d6289

    mul-float/2addr v11, v12

    move v9, v11

    .line 3832
    new-instance v11, Landroid/graphics/Path;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object v10, v11

    .line 3833
    move-object v11, v10

    move v12, v2

    move v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3834
    move-object v11, v10

    move v12, v2

    move v13, v9

    add-float/2addr v12, v13

    move v13, v6

    move v14, v7

    move v15, v3

    move/from16 v16, v9

    sub-float v15, v15, v16

    move/from16 v16, v7

    move/from16 v17, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3835
    move-object v11, v10

    move v12, v7

    move v13, v3

    move v14, v9

    add-float/2addr v13, v14

    move v14, v2

    move v15, v9

    add-float/2addr v14, v15

    move v15, v8

    move/from16 v16, v2

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3836
    move-object v11, v10

    move v12, v2

    move v13, v9

    sub-float/2addr v12, v13

    move v13, v8

    move v14, v5

    move v15, v3

    move/from16 v16, v9

    add-float v15, v15, v16

    move/from16 v16, v5

    move/from16 v17, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3837
    move-object v11, v10

    move v12, v5

    move v13, v3

    move v14, v9

    sub-float/2addr v13, v14

    move v14, v2

    move v15, v9

    sub-float/2addr v14, v15

    move v15, v6

    move/from16 v16, v2

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3838
    move-object v11, v10

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 3839
    move-object v11, v10

    move-object v0, v11

    return-object v0

    .line 3817
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3818
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 22

    .prologue
    .line 3845
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_1

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_0
    move v2, v13

    .line 3846
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_2

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_1
    move v3, v13

    .line 3847
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v4, v13

    .line 3848
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v5, v13

    .line 3850
    move v13, v2

    move v14, v4

    sub-float/2addr v13, v14

    move v6, v13

    .line 3851
    move v13, v3

    move v14, v5

    sub-float/2addr v13, v14

    move v7, v13

    .line 3852
    move v13, v2

    move v14, v4

    add-float/2addr v13, v14

    move v8, v13

    .line 3853
    move v13, v3

    move v14, v5

    add-float/2addr v13, v14

    move v9, v13

    .line 3855
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v13, :cond_0

    .line 3856
    move-object v13, v1

    new-instance v14, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v4

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    move/from16 v19, v5

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    invoke-direct/range {v15 .. v19}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3859
    :cond_0
    move v13, v4

    const v14, 0x3f0d6289

    mul-float/2addr v13, v14

    move v10, v13

    .line 3860
    move v13, v5

    const v14, 0x3f0d6289

    mul-float/2addr v13, v14

    move v11, v13

    .line 3862
    new-instance v13, Landroid/graphics/Path;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    move-object v12, v13

    .line 3863
    move-object v13, v12

    move v14, v2

    move v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3864
    move-object v13, v12

    move v14, v2

    move v15, v10

    add-float/2addr v14, v15

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v3

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v18, v8

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3865
    move-object v13, v12

    move v14, v8

    move v15, v3

    move/from16 v16, v11

    add-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v10

    add-float v16, v16, v17

    move/from16 v17, v9

    move/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3866
    move-object v13, v12

    move v14, v2

    move v15, v10

    sub-float/2addr v14, v15

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v11

    add-float v17, v17, v18

    move/from16 v18, v6

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3867
    move-object v13, v12

    move v14, v6

    move v15, v3

    move/from16 v16, v11

    sub-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v10

    sub-float v16, v16, v17

    move/from16 v17, v7

    move/from16 v18, v2

    move/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3868
    move-object v13, v12

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 3869
    move-object v13, v12

    move-object v0, v13

    return-object v0

    .line 3845
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3846
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 16

    .prologue
    .line 3737
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move v2, v7

    .line 3738
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    move v3, v7

    .line 3739
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_3

    const/4 v7, 0x0

    :goto_2
    move v4, v7

    .line 3740
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move v5, v7

    .line 3742
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v7, :cond_0

    .line 3743
    move-object v7, v1

    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v2

    move v11, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v11, v3

    move v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    move v12, v4

    move v13, v2

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move v13, v5

    move v14, v3

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3746
    :cond_0
    new-instance v7, Landroid/graphics/Path;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    move-object v6, v7

    .line 3747
    move-object v7, v6

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3748
    move-object v7, v6

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3749
    move-object v7, v6

    move-object v0, v7

    return-object v0

    .line 3737
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_0

    .line 3738
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 3739
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    .line 3740
    :cond_4
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_3
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 10

    .prologue
    .line 3875
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Landroid/graphics/Path;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object v2, v4

    .line 3877
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3878
    const/4 v4, 0x2

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 3881
    move-object v4, v1

    instance-of v4, v4, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v4, :cond_0

    .line 3882
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 3884
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_1

    .line 3885
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3888
    :cond_1
    move-object v4, v2

    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3889
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 3879
    :cond_2
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    move v6, v3

    aget v5, v5, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3878
    add-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 22

    .prologue
    .line 3757
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v13, :cond_2

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v13, :cond_2

    .line 3758
    const/4 v13, 0x0

    move v6, v13

    .line 3759
    const/4 v13, 0x0

    move v7, v13

    .line 3768
    :goto_0
    move v13, v6

    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v6, v13

    .line 3769
    move v13, v7

    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v7, v13

    .line 3770
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_5

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_1
    move v2, v13

    .line 3771
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_6

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_2
    move v3, v13

    .line 3772
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v4, v13

    .line 3773
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v5, v13

    .line 3775
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v13, :cond_0

    .line 3776
    move-object v13, v1

    new-instance v14, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v15 .. v19}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3779
    :cond_0
    move v13, v2

    move v14, v4

    add-float/2addr v13, v14

    move v8, v13

    .line 3780
    move v13, v3

    move v14, v5

    add-float/2addr v13, v14

    move v9, v13

    .line 3782
    new-instance v13, Landroid/graphics/Path;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    move-object v10, v13

    .line 3783
    move v13, v6

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    move v13, v7

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_7

    .line 3786
    :cond_1
    move-object v13, v10

    move v14, v2

    move v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3787
    move-object v13, v10

    move v14, v8

    move v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3788
    move-object v13, v10

    move v14, v8

    move v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3789
    move-object v13, v10

    move v14, v2

    move v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3790
    move-object v13, v10

    move v14, v2

    move v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3810
    :goto_3
    move-object v13, v10

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 3811
    move-object v13, v10

    move-object v0, v13

    return-object v0

    .line 3760
    :cond_2
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v13, :cond_3

    .line 3761
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move/from16 v21, v13

    move/from16 v13, v21

    move/from16 v14, v21

    move v7, v14

    move v6, v13

    .line 3762
    goto/16 :goto_0

    :cond_3
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v13, :cond_4

    .line 3763
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move/from16 v21, v13

    move/from16 v13, v21

    move/from16 v14, v21

    move v7, v14

    move v6, v13

    .line 3764
    goto/16 :goto_0

    .line 3765
    :cond_4
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v6, v13

    .line 3766
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    move v7, v13

    goto/16 :goto_0

    .line 3770
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3771
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 3797
    :cond_7
    move v13, v6

    const v14, 0x3f0d6289

    mul-float/2addr v13, v14

    move v11, v13

    .line 3798
    move v13, v7

    const v14, 0x3f0d6289

    mul-float/2addr v13, v14

    move v12, v13

    .line 3800
    move-object v13, v10

    move v14, v2

    move v15, v3

    move/from16 v16, v7

    add-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3801
    move-object v13, v10

    move v14, v2

    move v15, v3

    move/from16 v16, v7

    add-float v15, v15, v16

    move/from16 v16, v12

    sub-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v6

    add-float v16, v16, v17

    move/from16 v17, v11

    sub-float v16, v16, v17

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v6

    add-float v18, v18, v19

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3802
    move-object v13, v10

    move v14, v8

    move v15, v6

    sub-float/2addr v14, v15

    move v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3803
    move-object v13, v10

    move v14, v8

    move v15, v6

    sub-float/2addr v14, v15

    move v15, v11

    add-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v3

    move/from16 v18, v7

    add-float v17, v17, v18

    move/from16 v18, v12

    sub-float v17, v17, v18

    move/from16 v18, v8

    move/from16 v19, v3

    move/from16 v20, v7

    add-float v19, v19, v20

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3804
    move-object v13, v10

    move v14, v8

    move v15, v9

    move/from16 v16, v7

    sub-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3805
    move-object v13, v10

    move v14, v8

    move v15, v9

    move/from16 v16, v7

    sub-float v15, v15, v16

    move/from16 v16, v12

    add-float v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v6

    sub-float v16, v16, v17

    move/from16 v17, v11

    add-float v16, v16, v17

    move/from16 v17, v9

    move/from16 v18, v8

    move/from16 v19, v6

    sub-float v18, v18, v19

    move/from16 v19, v9

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3806
    move-object v13, v10

    move v14, v2

    move v15, v6

    add-float/2addr v14, v15

    move v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3807
    move-object v13, v10

    move v14, v2

    move v15, v6

    add-float/2addr v14, v15

    move v15, v11

    sub-float/2addr v14, v15

    move v15, v9

    move/from16 v16, v2

    move/from16 v17, v9

    move/from16 v18, v7

    sub-float v17, v17, v18

    move/from16 v18, v12

    add-float v17, v17, v18

    move/from16 v18, v2

    move/from16 v19, v9

    move/from16 v20, v7

    sub-float v19, v19, v20

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3808
    move-object v13, v10

    move v14, v2

    move v15, v3

    move/from16 v16, v7

    add-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method private makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 30

    .prologue
    .line 3204
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3205
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3207
    :cond_0
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    :goto_0
    move/from16 v6, v21

    .line 3208
    move/from16 v21, v3

    if-eqz v21, :cond_4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    :goto_1
    move-object/from16 v7, v21

    .line 3211
    move/from16 v21, v6

    if-eqz v21, :cond_8

    .line 3213
    new-instance v21, Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/high16 v23, 0x42480000    # 50.0f

    sget-object v24, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct/range {v22 .. v24}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object/from16 v11, v21

    .line 3214
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    :goto_2
    move/from16 v8, v21

    .line 3215
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    :goto_3
    move/from16 v9, v21

    .line 3216
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    :goto_4
    move/from16 v10, v21

    .line 3228
    :goto_5
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3231
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    invoke-direct/range {v22 .. v23}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3234
    new-instance v21, Landroid/graphics/Matrix;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v11, v21

    .line 3235
    move/from16 v21, v6

    if-nez v21, :cond_1

    .line 3237
    move-object/from16 v21, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v21

    .line 3238
    move-object/from16 v21, v11

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v21

    .line 3240
    :cond_1
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 3242
    move-object/from16 v21, v11

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v21

    .line 3246
    :cond_2
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v12, v21

    .line 3247
    move/from16 v21, v12

    if-nez v21, :cond_d

    .line 3249
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3250
    move/from16 v21, v3

    if-eqz v21, :cond_c

    .line 3251
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3308
    :goto_6
    return-void

    .line 3207
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3208
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    goto/16 :goto_1

    .line 3214
    :cond_5
    move-object/from16 v21, v11

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    goto/16 :goto_2

    .line 3215
    :cond_6
    move-object/from16 v21, v11

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    goto/16 :goto_3

    .line 3216
    :cond_7
    move-object/from16 v21, v11

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    goto/16 :goto_4

    .line 3220
    :cond_8
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v21

    :goto_7
    move/from16 v8, v21

    .line 3221
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v21

    :goto_8
    move/from16 v9, v21

    .line 3222
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v21 .. v23}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v21

    :goto_9
    move/from16 v10, v21

    goto/16 :goto_5

    .line 3220
    :cond_9
    const/high16 v21, 0x3f000000    # 0.5f

    goto :goto_7

    .line 3221
    :cond_a
    const/high16 v21, 0x3f000000    # 0.5f

    goto :goto_8

    .line 3222
    :cond_b
    const/high16 v21, 0x3f000000    # 0.5f

    goto :goto_9

    .line 3253
    :cond_c
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_6

    .line 3257
    :cond_d
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 3258
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 3259
    const/16 v21, 0x0

    move/from16 v15, v21

    .line 3260
    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v16, v21

    .line 3261
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_a
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_f

    .line 3286
    move/from16 v21, v10

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_e

    move/from16 v21, v12

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 3287
    :cond_e
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3288
    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move/from16 v23, v12

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 3289
    goto/16 :goto_6

    .line 3261
    :cond_f
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object/from16 v17, v21

    .line 3263
    move-object/from16 v21, v17

    check-cast v21, Lcom/caverock/androidsvg/SVG$Stop;

    move-object/from16 v19, v21

    .line 3264
    move/from16 v21, v15

    if-eqz v21, :cond_10

    move-object/from16 v21, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move/from16 v22, v16

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_12

    .line 3265
    :cond_10
    move-object/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    .line 3266
    move-object/from16 v21, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move/from16 v16, v21

    .line 3273
    :goto_b
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3275
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v23, v19

    invoke-direct/range {v21 .. v23}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3276
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-object/from16 v21, v0

    check-cast v21, Lcom/caverock/androidsvg/SVG$Colour;

    move-object/from16 v20, v21

    .line 3277
    move-object/from16 v21, v20

    if-nez v21, :cond_11

    .line 3278
    sget-object v21, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    move-object/from16 v20, v21

    .line 3279
    :cond_11
    move-object/from16 v21, v13

    move/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    invoke-direct/range {v23 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v23

    const/16 v24, 0x18

    shl-int/lit8 v23, v23, 0x18

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v24, v0

    or-int v23, v23, v24

    aput v23, v21, v22

    .line 3280
    add-int/lit8 v15, v15, 0x1

    .line 3282
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_a

    .line 3270
    :cond_12
    move-object/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    aput v23, v21, v22

    goto :goto_b

    .line 3293
    :cond_13
    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v21

    .line 3294
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 3296
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 3297
    sget-object v21, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v21

    .line 3302
    :cond_14
    :goto_c
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3305
    new-instance v21, Landroid/graphics/RadialGradient;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v17

    invoke-direct/range {v22 .. v28}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v18, v21

    .line 3306
    move-object/from16 v21, v18

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3307
    move-object/from16 v21, v7

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v21

    .line 3308
    goto/16 :goto_6

    .line 3298
    :cond_15
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 3299
    sget-object v21, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v21

    goto :goto_c
.end method

.method private parentPop()V
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 375
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 376
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 368
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 369
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 10

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v4, :cond_0

    .line 706
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v4

    move-object v2, v4

    .line 707
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 708
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/caverock/androidsvg/SVG$Mask;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 710
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 713
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Canvas;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 714
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 716
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Matrix;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 717
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 718
    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 719
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 722
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 723
    return-void
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 27

    .prologue
    .line 755
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    move-object/from16 v3, v19

    .line 757
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    move-object/from16 v4, v19

    .line 761
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v5, v19

    .line 762
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v6, v19

    .line 763
    move/from16 v19, v5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 764
    move/from16 v19, v5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 765
    const/16 v19, 0x0

    move/from16 v9, v19

    :goto_0
    move/from16 v19, v9

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 789
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 790
    move-object/from16 v19, v4

    move-object/from16 v2, v19

    return-object v2

    .line 767
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v20, v7

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 768
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 769
    const/16 v19, 0x0

    move/from16 v10, v19

    :goto_1
    move/from16 v19, v10

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 787
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v22, v5

    const/16 v23, 0x0

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 765
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 771
    :cond_1
    move-object/from16 v19, v7

    move/from16 v20, v10

    aget v19, v19, v20

    move/from16 v11, v19

    .line 772
    move/from16 v19, v11

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v12, v19

    .line 773
    move/from16 v19, v11

    const/16 v20, 0x8

    shr-int/lit8 v19, v19, 0x8

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v13, v19

    .line 774
    move/from16 v19, v11

    const/16 v20, 0x10

    shr-int/lit8 v19, v19, 0x10

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v14, v19

    .line 775
    move/from16 v19, v11

    const/16 v20, 0x18

    shr-int/lit8 v19, v19, 0x18

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v15, v19

    .line 776
    move/from16 v19, v15

    if-nez v19, :cond_2

    .line 778
    move-object/from16 v19, v8

    move/from16 v20, v10

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 769
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 781
    :cond_2
    move/from16 v19, v14

    const/16 v20, 0x1b33

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x1b33

    move/from16 v19, v0

    move/from16 v20, v13

    const/16 v21, 0x5b92

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x5b92

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v20, v12

    const/16 v21, 0x93a

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x93a

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v20, v15

    mul-int v19, v19, v20

    const v20, 0x7f8000

    div-int v19, v19, v20

    move/from16 v16, v19

    .line 782
    move-object/from16 v19, v8

    move/from16 v20, v10

    aget v19, v19, v20

    move/from16 v17, v19

    .line 783
    move/from16 v19, v17

    const/16 v20, 0x18

    shr-int/lit8 v19, v19, 0x18

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v18, v19

    .line 784
    move/from16 v19, v18

    move/from16 v20, v16

    mul-int v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v18, v19

    .line 785
    move-object/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v17

    const v22, 0xffffff

    and-int v21, v21, v22

    move/from16 v22, v18

    const/16 v23, 0x18

    shl-int/lit8 v22, v22, 0x18

    or-int v21, v21, v22

    aput v21, v19, v20

    goto :goto_2
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 15

    .prologue
    .line 1434
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v2

    move-object v10, v1

    check-cast v10, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1519
    :goto_0
    return-void

    .line 1437
    :cond_0
    move-object v9, v1

    instance-of v9, v9, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v9, :cond_2

    .line 1440
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1442
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1445
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1519
    :cond_1
    :goto_1
    goto :goto_0

    .line 1447
    :cond_2
    move-object v9, v1

    instance-of v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;

    if-eqz v9, :cond_e

    .line 1449
    const-string v9, "TSpan render"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1452
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1454
    move-object v9, v1

    check-cast v9, Lcom/caverock/androidsvg/SVG$TSpan;

    move-object v3, v9

    .line 1456
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1458
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1461
    const/4 v9, 0x0

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    .line 1462
    move-object v9, v2

    instance-of v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v9, :cond_7

    .line 1463
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-eqz v9, :cond_3

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    :cond_3
    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    :goto_2
    move v4, v9

    .line 1464
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-eqz v9, :cond_4

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    :cond_4
    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    :goto_3
    move v5, v9

    .line 1465
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    if-eqz v9, :cond_5

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_c

    :cond_5
    const/4 v9, 0x0

    :goto_4
    move v6, v9

    .line 1466
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v9, :cond_6

    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_d

    :cond_6
    const/4 v9, 0x0

    :goto_5
    move v7, v9

    .line 1469
    :cond_7
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1471
    move-object v9, v2

    instance-of v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v9, :cond_8

    .line 1472
    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    move v10, v4

    move v11, v6

    add-float/2addr v10, v11

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1473
    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    move v10, v5

    move v11, v7

    add-float/2addr v10, v11

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1476
    :cond_8
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v9

    move v8, v9

    .line 1478
    move-object v9, v0

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1480
    move v9, v8

    if-eqz v9, :cond_9

    .line 1481
    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1485
    :cond_9
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1486
    goto/16 :goto_1

    .line 1463
    :cond_a
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_2

    .line 1464
    :cond_b
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    .line 1465
    :cond_c
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_4

    .line 1466
    :cond_d
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_5

    .line 1487
    :cond_e
    move-object v9, v1

    instance-of v9, v9, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v9, :cond_1

    .line 1490
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1492
    move-object v9, v1

    check-cast v9, Lcom/caverock/androidsvg/SVG$TRef;

    move-object v3, v9

    .line 1494
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1496
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1498
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1501
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    move-object v10, v3

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v9

    move-object v4, v9

    .line 1502
    move-object v9, v4

    if-eqz v9, :cond_10

    move-object v9, v4

    instance-of v9, v9, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v9, :cond_10

    .line 1504
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v9

    .line 1505
    move-object v9, v0

    move-object v10, v4

    check-cast v10, Lcom/caverock/androidsvg/SVG$TextContainer;

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1506
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 1507
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1517
    :cond_f
    :goto_6
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_1

    .line 1512
    :cond_10
    const-string v9, "Tref reference \'%s\' not found"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private pushLayer()Z
    .locals 8

    .prologue
    .line 673
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    const/4 v2, 0x0

    move v0, v2

    .line 697
    :goto_0
    return v0

    .line 677
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v2

    .line 680
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 681
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 683
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v2, :cond_3

    .line 684
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    move-object v1, v2

    .line 686
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v2, :cond_2

    .line 688
    :cond_1
    const-string v2, "Mask reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 690
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 693
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 694
    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 697
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 7

    .prologue
    .line 1050
    move-object v0, p0

    move-object v1, p1

    const-string v4, "Circle render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1057
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1058
    goto :goto_0

    .line 1059
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1060
    goto :goto_0

    .line 1062
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_4

    .line 1063
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1065
    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v4

    move-object v2, v4

    .line 1066
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1068
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1069
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1071
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    move v3, v4

    .line 1073
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v4, :cond_5

    .line 1074
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1075
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v4, :cond_6

    .line 1076
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1078
    :cond_6
    move v4, v3

    if-eqz v4, :cond_7

    .line 1079
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1080
    :cond_7
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 7

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, p1

    const-string v4, "Ellipse render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1095
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1096
    goto :goto_0

    .line 1097
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1098
    goto :goto_0

    .line 1100
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_4

    .line 1101
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1103
    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v4

    move-object v2, v4

    .line 1104
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1106
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1107
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1109
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    move v3, v4

    .line 1111
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v4, :cond_5

    .line 1112
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1113
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v4, :cond_6

    .line 1114
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1116
    :cond_6
    move v4, v3

    if-eqz v4, :cond_7

    .line 1117
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1118
    :cond_7
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 6

    .prologue
    .line 598
    move-object v0, p0

    move-object v1, p1

    const-string v3, "Group render"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 602
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-nez v3, :cond_0

    .line 619
    :goto_0
    return-void

    .line 605
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1

    .line 606
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 609
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 611
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    move v2, v3

    .line 613
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 615
    move v3, v2

    if-eqz v3, :cond_2

    .line 616
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 618
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 619
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 17

    .prologue
    .line 1781
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v9, "Image render"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1783
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1784
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1788
    goto :goto_0

    .line 1791
    :cond_2
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v9, :cond_3

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1
    move-object v2, v9

    .line 1794
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v3, v9

    .line 1795
    move-object v9, v3

    if-nez v9, :cond_5

    .line 1797
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v9

    move-object v4, v9

    .line 1798
    move-object v9, v4

    if-nez v9, :cond_4

    .line 1799
    goto :goto_0

    .line 1791
    :cond_3
    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1801
    :cond_4
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v3, v9

    .line 1803
    :cond_5
    move-object v9, v3

    if-nez v9, :cond_6

    .line 1804
    const-string v9, "Could not locate image \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    goto :goto_0

    .line 1808
    :cond_6
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1810
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1811
    goto :goto_0

    .line 1812
    :cond_7
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1813
    goto :goto_0

    .line 1815
    :cond_8
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_9

    .line 1816
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1819
    :cond_9
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_c

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_2
    move v4, v9

    .line 1820
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_d

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_3
    move v5, v9

    .line 1821
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    move v6, v9

    .line 1822
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    move v7, v9

    .line 1823
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1825
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1826
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v11, v0

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object v12, v0

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v13, v0

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1829
    :cond_a
    move-object v9, v1

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object v15, v3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1830
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v1

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1832
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1834
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1836
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v9

    move v8, v9

    .line 1838
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1840
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1842
    move v9, v8

    if-eqz v9, :cond_b

    .line 1843
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1844
    :cond_b
    goto/16 :goto_0

    .line 1819
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1820
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 7

    .prologue
    .line 1126
    move-object v0, p0

    move-object v1, p1

    const-string v4, "Line render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1130
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1132
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1133
    goto :goto_0

    .line 1134
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v4, :cond_2

    .line 1135
    goto :goto_0

    .line 1137
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    .line 1138
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1140
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v4

    move-object v2, v4

    .line 1141
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1143
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1144
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1146
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    move v3, v4

    .line 1148
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1150
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1152
    move v4, v3

    if-eqz v4, :cond_4

    .line 1153
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1154
    :cond_4
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 9

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    const-string v4, "Path render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 962
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_0

    .line 995
    :goto_0
    return-void

    .line 964
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 965
    goto :goto_0

    .line 966
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v4, :cond_2

    .line 967
    goto :goto_0

    .line 969
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    .line 970
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 972
    :cond_3
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v2, v4

    .line 974
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_4

    .line 975
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 977
    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 979
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 980
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 982
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    move v3, v4

    .line 984
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v4, :cond_5

    .line 985
    move-object v4, v2

    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 986
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 988
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v4, :cond_6

    .line 989
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 991
    :cond_6
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 993
    move v4, v3

    if-eqz v4, :cond_7

    .line 994
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 995
    :cond_7
    goto/16 :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 8

    .prologue
    .line 1177
    move-object v0, p0

    move-object v1, p1

    const-string v5, "PolyLine render"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1181
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1183
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1184
    goto :goto_0

    .line 1185
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v5, :cond_2

    .line 1186
    goto :goto_0

    .line 1188
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_3

    .line 1189
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1191
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v5, v5

    move v2, v5

    .line 1192
    move v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 1193
    goto :goto_0

    .line 1195
    :cond_4
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v5

    move-object v3, v5

    .line 1196
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1198
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1199
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1201
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    move v4, v5

    .line 1203
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v5, :cond_5

    .line 1204
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1205
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v5, :cond_6

    .line 1206
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1208
    :cond_6
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1210
    move v5, v4

    if-eqz v5, :cond_7

    .line 1211
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1212
    :cond_7
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 8

    .prologue
    .line 1261
    move-object v0, p0

    move-object v1, p1

    const-string v5, "Polygon render"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1265
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1267
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1268
    goto :goto_0

    .line 1269
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v5, :cond_2

    .line 1270
    goto :goto_0

    .line 1272
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_3

    .line 1273
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1275
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v5, v5

    move v2, v5

    .line 1276
    move v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 1277
    goto :goto_0

    .line 1279
    :cond_4
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v5

    move-object v3, v5

    .line 1280
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1282
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1283
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1285
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    move v4, v5

    .line 1287
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v5, :cond_5

    .line 1288
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1289
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v5, :cond_6

    .line 1290
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1292
    :cond_6
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1294
    move v5, v4

    if-eqz v5, :cond_7

    .line 1295
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1296
    :cond_7
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 7

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, p1

    const-string v4, "Rect render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1018
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1019
    goto :goto_0

    .line 1020
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1021
    goto :goto_0

    .line 1023
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_4

    .line 1024
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1026
    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v4

    move-object v2, v4

    .line 1027
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1029
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1030
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1032
    move-object v4, v0

    invoke-direct {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    move v3, v4

    .line 1034
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v4, :cond_5

    .line 1035
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1036
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v4, :cond_6

    .line 1037
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1040
    :cond_6
    move v4, v3

    if-eqz v4, :cond_7

    .line 1041
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1042
    :cond_7
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 6

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 522
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 10

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct/range {v4 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 529
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 21

    .prologue
    .line 537
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v13, "Svg render"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    move-object v13, v3

    if-eqz v13, :cond_0

    move-object v13, v3

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v13

    if-nez v13, :cond_1

    .line 540
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_2

    move-object v13, v4

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    move-object v13, v6

    if-nez v13, :cond_3

    .line 545
    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v13, :cond_4

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1
    move-object v6, v13

    .line 547
    :cond_3
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 549
    move-object v13, v1

    invoke-direct {v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v13

    if-nez v13, :cond_5

    .line 550
    goto :goto_0

    .line 545
    :cond_4
    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 553
    :cond_5
    const/4 v13, 0x0

    move v7, v13

    .line 554
    const/4 v13, 0x0

    move v8, v13

    .line 555
    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v13, :cond_6

    .line 557
    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_9

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_2
    move v7, v13

    .line 558
    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_a

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_3
    move v8, v13

    .line 561
    :cond_6
    move-object v13, v1

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v13

    move-object v9, v13

    .line 562
    move-object v13, v3

    if-eqz v13, :cond_b

    move-object v13, v3

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_4
    move v10, v13

    .line 563
    move-object v13, v4

    if-eqz v13, :cond_c

    move-object v13, v4

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_5
    move v11, v13

    .line 564
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v14, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v15 .. v19}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v14, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 566
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7

    .line 567
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v14, v14, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v15, v1

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v15, v15, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 570
    :cond_7
    move-object v13, v1

    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v13, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 572
    move-object v13, v5

    if-eqz v13, :cond_d

    .line 573
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v15, v15, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 574
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v14, v2

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 579
    :goto_6
    move-object v13, v1

    invoke-direct {v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v13

    move v12, v13

    .line 582
    move-object v13, v1

    invoke-direct {v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 584
    move-object v13, v1

    move-object v14, v2

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 586
    move v13, v12

    if-eqz v13, :cond_8

    .line 587
    move-object v13, v1

    move-object v14, v2

    invoke-direct {v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 589
    :cond_8
    move-object v13, v1

    move-object v14, v2

    invoke-direct {v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 590
    goto/16 :goto_0

    .line 557
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 558
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 562
    :cond_b
    move-object v13, v9

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto/16 :goto_4

    .line 563
    :cond_c
    move-object v13, v9

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto/16 :goto_5

    .line 576
    :cond_d
    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move v14, v7

    move v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 285
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 287
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v2, :cond_2

    .line 288
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    .line 316
    :cond_1
    :goto_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 317
    goto :goto_0

    .line 289
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v2, :cond_3

    .line 290
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    .line 291
    goto :goto_1

    :cond_3
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v2, :cond_4

    .line 292
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 293
    goto :goto_1

    :cond_4
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v2, :cond_5

    .line 294
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    .line 295
    goto :goto_1

    :cond_5
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v2, :cond_6

    .line 296
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    .line 297
    goto :goto_1

    :cond_6
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v2, :cond_7

    .line 298
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    .line 299
    goto :goto_1

    :cond_7
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v2, :cond_8

    .line 300
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    .line 301
    goto :goto_1

    :cond_8
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v2, :cond_9

    .line 302
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    .line 303
    goto :goto_1

    :cond_9
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v2, :cond_a

    .line 304
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    .line 305
    goto :goto_1

    :cond_a
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v2, :cond_b

    .line 306
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    .line 307
    goto :goto_1

    :cond_b
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v2, :cond_c

    .line 308
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    .line 309
    goto/16 :goto_1

    :cond_c
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v2, :cond_d

    .line 310
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    .line 311
    goto/16 :goto_1

    :cond_d
    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_1

    .line 312
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    goto/16 :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 6

    .prologue
    .line 802
    move-object v0, p0

    move-object v1, p1

    const-string v3, "Switch render"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 806
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-nez v3, :cond_0

    .line 823
    :goto_0
    return-void

    .line 809
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1

    .line 810
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 813
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 815
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    move v2, v3

    .line 817
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 819
    move v3, v2

    if-eqz v3, :cond_2

    .line 820
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 822
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 823
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 16

    .prologue
    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v8, "Symbol render"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1744
    :cond_0
    move-object v8, v3

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1773
    :cond_1
    :goto_0
    return-void

    .line 1748
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v8, :cond_6

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1
    move-object v4, v8

    .line 1750
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1752
    move-object v8, v2

    if-eqz v8, :cond_7

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    :goto_2
    move v5, v8

    .line 1753
    move-object v8, v3

    if-eqz v8, :cond_8

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    :goto_3
    move v6, v8

    .line 1754
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v9, Lcom/caverock/androidsvg/SVG$Box;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v5

    move v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1756
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1757
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object v11, v0

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v12, v0

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1760
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v8, :cond_4

    .line 1761
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1762
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1765
    :cond_4
    move-object v8, v0

    invoke-direct {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v8

    move v7, v8

    .line 1767
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1769
    move v8, v7

    if-eqz v8, :cond_5

    .line 1770
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1772
    :cond_5
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1773
    goto/16 :goto_0

    .line 1748
    :cond_6
    sget-object v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_1

    .line 1752
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto/16 :goto_2

    .line 1753
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto/16 :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 17

    .prologue
    .line 1304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v8, "Text render"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1308
    move-object v8, v0

    invoke-direct {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1311
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v8, :cond_1

    .line 1312
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1315
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-eqz v8, :cond_2

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v2, v8

    .line 1316
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v8, :cond_3

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    :cond_3
    const/4 v8, 0x0

    :goto_2
    move v3, v8

    .line 1317
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    :cond_4
    const/4 v8, 0x0

    :goto_3
    move v4, v8

    .line 1318
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v8, :cond_5

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c

    :cond_5
    const/4 v8, 0x0

    :goto_4
    move v5, v8

    .line 1321
    move-object v8, v0

    invoke-direct {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v8

    move-object v6, v8

    .line 1322
    move-object v8, v6

    sget-object v9, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v8, v9, :cond_6

    .line 1323
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v8

    move v7, v8

    .line 1324
    move-object v8, v6

    sget-object v9, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v8, v9, :cond_d

    .line 1325
    move v8, v2

    move v9, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v2, v8

    .line 1331
    :cond_6
    :goto_5
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v8, :cond_7

    .line 1332
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    move-object v7, v8

    .line 1333
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1334
    move-object v8, v1

    new-instance v9, Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v7

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move-object v12, v7

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v7

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object v14, v7

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1336
    :cond_7
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1338
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1339
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1341
    move-object v8, v0

    invoke-direct {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v8

    move v7, v8

    .line 1343
    move-object v8, v0

    move-object v9, v1

    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move v13, v2

    move v14, v4

    add-float/2addr v13, v14

    move v14, v3

    move v15, v5

    add-float/2addr v14, v15

    invoke-direct {v11, v12, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1345
    move v8, v7

    if-eqz v8, :cond_8

    .line 1346
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1347
    :cond_8
    goto/16 :goto_0

    .line 1315
    :cond_9
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto/16 :goto_1

    .line 1316
    :cond_a
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto/16 :goto_2

    .line 1317
    :cond_b
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto/16 :goto_3

    .line 1318
    :cond_c
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto/16 :goto_4

    .line 1327
    :cond_d
    move v8, v2

    move v9, v7

    sub-float/2addr v8, v9

    move v2, v8

    goto/16 :goto_5
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 16

    .prologue
    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v10, "Use render"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v10

    if-nez v10, :cond_1

    .line 890
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 950
    :cond_1
    :goto_0
    return-void

    .line 893
    :cond_2
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 895
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v10

    if-nez v10, :cond_3

    .line 896
    goto :goto_0

    .line 899
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v10

    move-object v2, v10

    .line 900
    move-object v10, v2

    if-nez v10, :cond_4

    .line 901
    const-string v10, "Use reference \'%s\' not found"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    goto :goto_0

    .line 905
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v10, :cond_5

    .line 906
    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 910
    :cond_5
    new-instance v10, Landroid/graphics/Matrix;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v10

    .line 911
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_7

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    :goto_1
    move v4, v10

    .line 912
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_8

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    :goto_2
    move v5, v10

    .line 913
    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v10

    .line 914
    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 916
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 918
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v10

    move v6, v10

    .line 920
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 922
    move-object v10, v2

    instance-of v10, v10, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v10, :cond_b

    .line 924
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 925
    move-object v10, v2

    check-cast v10, Lcom/caverock/androidsvg/SVG$Svg;

    move-object v7, v10

    .line 926
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    :goto_3
    move-object v8, v10

    .line 927
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_a

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    :goto_4
    move-object v9, v10

    .line 928
    move-object v10, v0

    move-object v11, v7

    move-object v12, v8

    move-object v13, v9

    invoke-direct {v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 929
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 944
    :goto_5
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 946
    move v10, v6

    if-eqz v10, :cond_6

    .line 947
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 949
    :cond_6
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 950
    goto/16 :goto_0

    .line 911
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 912
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 926
    :cond_9
    move-object v10, v7

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 927
    :cond_a
    move-object v10, v7

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    .line 931
    :cond_b
    move-object v10, v2

    instance-of v10, v10, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v10, :cond_e

    .line 933
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_c

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    :goto_6
    move-object v7, v10

    .line 934
    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_d

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    :goto_7
    move-object v8, v10

    .line 935
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 936
    move-object v10, v0

    move-object v11, v2

    check-cast v11, Lcom/caverock/androidsvg/SVG$Symbol;

    move-object v12, v7

    move-object v13, v8

    invoke-direct {v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 937
    move-object v10, v0

    invoke-direct {v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 938
    goto :goto_5

    .line 933
    :cond_c
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/high16 v12, 0x42c80000    # 100.0f

    sget-object v13, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v11, v12, v13}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_6

    .line 934
    :cond_d
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/high16 v12, 0x42c80000    # 100.0f

    sget-object v13, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v11, v12, v13}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_7

    .line 941
    :cond_e
    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_5
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-eqz v5, :cond_0

    .line 326
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 329
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 333
    move v5, v2

    if-eqz v5, :cond_1

    .line 334
    move-object v5, v0

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 336
    :cond_1
    return-void

    .line 329
    :cond_2
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v3, v5

    .line 330
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 25

    .prologue
    .line 2870
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/16 v19, 0x0

    move/from16 v5, v19

    .line 2873
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 2876
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2878
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2880
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_1

    .line 2881
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v5, v19

    .line 2888
    :cond_1
    :goto_0
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_1
    move/from16 v6, v19

    .line 2892
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2894
    new-instance v19, Landroid/graphics/Matrix;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v7, v19

    .line 2895
    move-object/from16 v19, v7

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v19

    .line 2896
    move-object/from16 v19, v7

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v19

    .line 2897
    move-object/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v6

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v19

    .line 2899
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v19

    :goto_2
    move/from16 v8, v19

    .line 2900
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v19

    :goto_3
    move/from16 v9, v19

    .line 2901
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v19

    :goto_4
    move/from16 v10, v19

    .line 2902
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v19

    :goto_5
    move/from16 v11, v19

    .line 2904
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 2911
    move/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v12, v19

    .line 2912
    move/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v13, v19

    .line 2915
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v19, v0

    :goto_6
    move-object/from16 v14, v19

    .line 2916
    move-object/from16 v19, v14

    sget-object v20, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 2918
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v19

    sget-object v20, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    :goto_7
    move/from16 v15, v19

    .line 2919
    move/from16 v19, v15

    move/from16 v24, v19

    move/from16 v19, v24

    move/from16 v20, v24

    move/from16 v13, v20

    move/from16 v12, v19

    .line 2923
    :cond_2
    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v12

    mul-float v20, v20, v21

    move/from16 v21, v9

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    mul-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v19

    .line 2924
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2928
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v19, v0

    move/from16 v20, v12

    mul-float v19, v19, v20

    move/from16 v15, v19

    .line 2929
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v19, v0

    move/from16 v20, v13

    mul-float v19, v19, v20

    move/from16 v16, v19

    .line 2930
    const/16 v19, 0x0

    move/from16 v17, v19

    .line 2931
    const/16 v19, 0x0

    move/from16 v18, v19

    .line 2932
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v19

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 2946
    :goto_8
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v19

    .line 2949
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1

    .line 2966
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_3

    .line 2967
    move-object/from16 v19, v2

    move/from16 v20, v17

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 2970
    :cond_3
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Matrix;->reset()V

    .line 2971
    move-object/from16 v19, v7

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v19

    .line 2972
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2986
    :cond_4
    :goto_a
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v19

    move/from16 v12, v19

    .line 2988
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 2990
    move/from16 v19, v12

    if-eqz v19, :cond_5

    .line 2991
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 2993
    :cond_5
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 2994
    return-void

    .line 2884
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v5, v19

    goto/16 :goto_0

    .line 2888
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v19

    goto/16 :goto_1

    .line 2899
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2900
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2901
    :cond_a
    const/high16 v19, 0x40400000    # 3.0f

    goto/16 :goto_4

    .line 2902
    :cond_b
    const/high16 v19, 0x40400000    # 3.0f

    goto/16 :goto_5

    .line 2915
    :cond_c
    sget-object v19, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_6

    .line 2918
    :cond_d
    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    goto/16 :goto_7

    .line 2937
    :pswitch_1
    move/from16 v19, v17

    move/from16 v20, v10

    move/from16 v21, v15

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v17, v19

    .line 2938
    goto/16 :goto_8

    .line 2942
    :pswitch_2
    move/from16 v19, v17

    move/from16 v20, v10

    move/from16 v21, v15

    sub-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v17, v19

    .line 2943
    goto/16 :goto_8

    .line 2954
    :pswitch_3
    move/from16 v19, v18

    move/from16 v20, v11

    move/from16 v21, v16

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v18, v19

    .line 2955
    goto/16 :goto_9

    .line 2959
    :pswitch_4
    move/from16 v19, v18

    move/from16 v20, v11

    move/from16 v21, v16

    sub-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v18, v19

    .line 2960
    goto/16 :goto_9

    .line 2978
    :cond_e
    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v9

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v19

    .line 2979
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2981
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_4

    .line 2982
    move-object/from16 v19, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_a

    .line 2932
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2949
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 15

    .prologue
    .line 2801
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 2862
    :goto_0
    return-void

    .line 2804
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .line 2805
    const/4 v8, 0x0

    move-object v3, v8

    .line 2806
    const/4 v8, 0x0

    move-object v4, v8

    .line 2808
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 2809
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v8

    move-object v5, v8

    .line 2810
    move-object v8, v5

    if-eqz v8, :cond_4

    .line 2811
    move-object v8, v5

    check-cast v8, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v2, v8

    .line 2816
    :cond_1
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 2817
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v8

    move-object v5, v8

    .line 2818
    move-object v8, v5

    if-eqz v8, :cond_5

    .line 2819
    move-object v8, v5

    check-cast v8, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v3, v8

    .line 2824
    :cond_2
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2825
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v8

    move-object v5, v8

    .line 2826
    move-object v8, v5

    if-eqz v8, :cond_6

    .line 2827
    move-object v8, v5

    check-cast v8, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v4, v8

    .line 2832
    :cond_3
    :goto_3
    const/4 v8, 0x0

    move-object v5, v8

    .line 2833
    move-object v8, v1

    instance-of v8, v8, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v8, :cond_7

    .line 2834
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v1

    check-cast v11, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 2840
    :goto_4
    move-object v8, v5

    if-nez v8, :cond_9

    .line 2841
    goto/16 :goto_0

    .line 2813
    :cond_4
    const-string v8, "Marker reference \'%s\' not found"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2821
    :cond_5
    const-string v8, "Marker reference \'%s\' not found"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2829
    :cond_6
    const-string v8, "Marker reference \'%s\' not found"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2835
    :cond_7
    move-object v8, v1

    instance-of v8, v8, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v8, :cond_8

    .line 2836
    move-object v8, v0

    move-object v9, v1

    check-cast v9, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    goto :goto_4

    .line 2838
    :cond_8
    move-object v8, v0

    move-object v9, v1

    check-cast v9, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    goto :goto_4

    .line 2843
    :cond_9
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .line 2844
    move v8, v6

    if-nez v8, :cond_a

    .line 2845
    goto/16 :goto_0

    .line 2848
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v11, 0x0

    move-object v13, v10

    move-object v14, v11

    move-object v10, v14

    move-object v11, v13

    move-object v12, v14

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2850
    move-object v8, v2

    if-eqz v8, :cond_b

    .line 2851
    move-object v8, v0

    move-object v9, v2

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2853
    :cond_b
    move-object v8, v3

    if-eqz v8, :cond_c

    .line 2855
    const/4 v8, 0x1

    move v7, v8

    :goto_5
    move v8, v7

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_e

    .line 2860
    :cond_c
    move-object v8, v4

    if-eqz v8, :cond_d

    .line 2861
    move-object v8, v0

    move-object v9, v4

    move-object v10, v5

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2862
    :cond_d
    goto/16 :goto_0

    .line 2856
    :cond_e
    move-object v8, v0

    move-object v9, v3

    move-object v10, v5

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2855
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 15

    .prologue
    .line 4089
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v9, "Mask render"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4091
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 4094
    move v9, v3

    if-eqz v9, :cond_6

    .line 4096
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_2

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_1
    move v6, v9

    .line 4097
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_3

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_2
    move v7, v9

    .line 4098
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_3
    move v4, v9

    .line 4099
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_5

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    :goto_4
    move v5, v9

    .line 4113
    :goto_5
    move v9, v6

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    move v9, v7

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_b

    .line 4137
    :cond_0
    :goto_6
    return-void

    .line 4091
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 4096
    :cond_2
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_1

    .line 4097
    :cond_3
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_2

    .line 4098
    :cond_4
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    float-to-double v13, v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    double-to-float v9, v9

    goto :goto_3

    .line 4099
    :cond_5
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    move-object v13, v2

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    float-to-double v13, v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    double-to-float v9, v9

    goto :goto_4

    .line 4104
    :cond_6
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_7

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :goto_7
    move v4, v9

    .line 4105
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_8

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :goto_8
    move v5, v9

    .line 4106
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_9

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :goto_9
    move v6, v9

    .line 4107
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_a

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :goto_a
    move v7, v9

    .line 4108
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move v10, v4

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v4, v9

    .line 4109
    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move v10, v5

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v5, v9

    .line 4110
    move v9, v6

    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v9, v10

    move v6, v9

    .line 4111
    move v9, v7

    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v9, v10

    move v7, v9

    goto/16 :goto_5

    .line 4104
    :cond_7
    const v9, -0x42333333    # -0.1f

    goto :goto_7

    .line 4105
    :cond_8
    const v9, -0x42333333    # -0.1f

    goto :goto_8

    .line 4106
    :cond_9
    const v9, 0x3f99999a    # 1.2f

    goto :goto_9

    .line 4107
    :cond_a
    const v9, 0x3f99999a    # 1.2f

    goto :goto_a

    .line 4117
    :cond_b
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4119
    move-object v9, v0

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v10

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4123
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4126
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v9, :cond_d

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_d

    const/4 v9, 0x0

    :goto_b
    move v8, v9

    .line 4127
    move v9, v8

    if-nez v9, :cond_c

    .line 4128
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4129
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v10, v2

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4133
    :cond_c
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4136
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4137
    goto/16 :goto_6

    .line 4126
    :cond_d
    const/4 v9, 0x1

    goto :goto_b
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 18

    .prologue
    .line 828
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 829
    move-object v14, v1

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v14

    move-object v4, v14

    .line 832
    move-object v14, v2

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v6, v14

    :cond_0
    :goto_0
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 879
    :goto_1
    return-void

    .line 832
    :cond_1
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v5, v14

    .line 835
    move-object v14, v5

    instance-of v14, v14, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-nez v14, :cond_2

    .line 836
    goto :goto_0

    .line 838
    :cond_2
    move-object v14, v5

    check-cast v14, Lcom/caverock/androidsvg/SVG$SvgConditional;

    move-object v7, v14

    .line 841
    move-object v14, v7

    invoke-interface {v14}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 842
    goto :goto_0

    .line 845
    :cond_3
    move-object v14, v7

    invoke-interface {v14}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v14

    move-object v8, v14

    .line 846
    move-object v14, v8

    if-eqz v14, :cond_4

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v8

    move-object v15, v3

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 847
    goto :goto_0

    .line 850
    :cond_4
    move-object v14, v7

    invoke-interface {v14}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v14

    move-object v9, v14

    .line 851
    move-object v14, v9

    if-eqz v14, :cond_5

    move-object v14, v9

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    sget-object v14, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 852
    goto :goto_0

    .line 855
    :cond_5
    move-object v14, v7

    invoke-interface {v14}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v14

    move-object v10, v14

    .line 856
    move-object v14, v10

    if-eqz v14, :cond_8

    .line 857
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v4

    if-nez v14, :cond_6

    .line 858
    goto :goto_0

    .line 859
    :cond_6
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :cond_7
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_9

    .line 865
    :cond_8
    move-object v14, v7

    invoke-interface {v14}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v14

    move-object v11, v14

    .line 866
    move-object v14, v11

    if-eqz v14, :cond_c

    .line 867
    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v4

    if-nez v14, :cond_a

    .line 868
    goto/16 :goto_0

    .line 859
    :cond_9
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v11, v14

    .line 860
    move-object v14, v4

    move-object v15, v11

    invoke-virtual {v14, v15}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 861
    goto/16 :goto_0

    .line 869
    :cond_a
    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v13, v14

    :cond_b
    move-object v14, v13

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_d

    .line 876
    :cond_c
    move-object v14, v1

    move-object v15, v5

    invoke-direct {v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 877
    goto/16 :goto_1

    .line 869
    :cond_d
    move-object v14, v13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v12, v14

    .line 870
    move-object v14, v4

    move-object v15, v12

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    if-nez v14, :cond_b

    .line 871
    goto/16 :goto_0
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 18

    .prologue
    .line 1527
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v9, "TextPath render"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1529
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1531
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1533
    :cond_0
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1534
    goto :goto_0

    .line 1536
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v9

    move-object v2, v9

    .line 1537
    move-object v9, v2

    if-nez v9, :cond_2

    .line 1539
    const-string v9, "TextPath reference \'%s\' not found"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1540
    goto :goto_0

    .line 1543
    :cond_2
    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVG$Path;

    move-object v3, v9

    .line 1544
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v3

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v9

    move-object v4, v9

    .line 1546
    move-object v9, v3

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_3

    .line 1547
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1549
    :cond_3
    new-instance v9, Landroid/graphics/PathMeasure;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v4

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v5, v9

    .line 1551
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_6

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :goto_1
    move v6, v9

    .line 1554
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v9

    move-object v7, v9

    .line 1555
    move-object v9, v7

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v9, v10, :cond_4

    .line 1556
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v9

    move v8, v9

    .line 1557
    move-object v9, v7

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v9, v10, :cond_7

    .line 1558
    move v9, v6

    move v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v6, v9

    .line 1564
    :cond_4
    :goto_2
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1566
    move-object v9, v0

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v9

    move v8, v9

    .line 1568
    move-object v9, v0

    move-object v10, v1

    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move-object v14, v4

    move v15, v6

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1570
    move v9, v8

    if-eqz v9, :cond_5

    .line 1571
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1572
    :cond_5
    goto/16 :goto_0

    .line 1551
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 1560
    :cond_7
    move v9, v6

    move v10, v8

    sub-float/2addr v9, v10

    move v6, v9

    goto :goto_2
.end method

.method private requiresCompositing()Z
    .locals 3

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v1, :cond_0

    .line 729
    const-string v1, "Masks are not supported when using getPicture()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 732
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v1, :cond_2

    .line 731
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private resetState()V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 174
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 177
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 179
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 181
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 185
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    .line 189
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    .line 193
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 194
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 195
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 14

    .prologue
    .line 2346
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v9, v1

    move v5, v9

    .line 2347
    move v9, v2

    move v6, v9

    .line 2348
    move v9, v1

    move v10, v3

    add-float/2addr v9, v10

    move v7, v9

    .line 2349
    move v9, v2

    move v10, v4

    add-float/2addr v9, v10

    move v8, v9

    .line 2351
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v9, :cond_0

    .line 2352
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    add-float/2addr v9, v10

    move v5, v9

    .line 2353
    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    add-float/2addr v9, v10

    move v6, v9

    .line 2354
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    sub-float/2addr v9, v10

    move v7, v9

    .line 2355
    move v9, v8

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    sub-float/2addr v9, v10

    move v8, v9

    .line 2358
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v9

    .line 2359
    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 8

    .prologue
    .line 2281
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v6

    .line 2283
    move-object v6, v3

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v6, :cond_1

    .line 2284
    move-object v6, v3

    check-cast v6, Lcom/caverock/androidsvg/SVG$Colour;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v5, v6

    .line 2290
    :goto_1
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v6

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move v7, v5

    or-int/2addr v6, v7

    move v5, v6

    .line 2291
    move v6, v2

    if-eqz v6, :cond_3

    .line 2292
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2295
    :goto_2
    return-void

    .line 2281
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto :goto_0

    .line 2285
    :cond_1
    move-object v6, v3

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v6, :cond_2

    .line 2286
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v5, v6

    .line 2287
    goto :goto_1

    .line 2288
    :cond_2
    goto :goto_2

    .line 2294
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 7

    .prologue
    .line 3390
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    if-eqz v3, :cond_4

    .line 3392
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x80000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3394
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3395
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3398
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x100000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3400
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3404
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x180000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3406
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3429
    :cond_2
    :goto_1
    return-void

    .line 3395
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3411
    :cond_4
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x80000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3413
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3414
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3417
    :cond_5
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x100000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3419
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3423
    :cond_6
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v5, 0x180000000L

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3425
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_1

    .line 3414
    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private statePop()V
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 358
    return-void
.end method

.method private statePush()V
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 347
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 349
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1721
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-eqz v4, :cond_0

    .line 1722
    move-object v4, v1

    const-string v5, "[\\n\\t]"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1732
    :goto_0
    return-object v0

    .line 1725
    :cond_0
    move-object v4, v1

    const-string v5, "\\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1726
    move-object v4, v1

    const-string v5, "\\t"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1728
    move v4, v2

    if-eqz v4, :cond_1

    .line 1729
    move-object v4, v1

    const-string v5, "^\\s+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1730
    :cond_1
    move v4, v3

    if-eqz v4, :cond_2

    .line 1731
    move-object v4, v1

    const-string v5, "\\s+$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1732
    :cond_2
    move-object v4, v1

    const-string v5, "\\s{2,}"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 14

    .prologue
    .line 634
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v6, :cond_0

    .line 665
    :goto_0
    return-void

    .line 636
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_1

    .line 637
    goto :goto_0

    .line 640
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v6

    .line 642
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 643
    const/16 v6, 0x8

    new-array v6, v6, [F

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x2

    .line 644
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v9

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x3

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x4

    .line 645
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v9

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x5

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v9

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x6

    .line 646
    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x7

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v9

    aput v9, v7, v8

    .line 643
    move-object v3, v6

    .line 648
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 649
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 651
    new-instance v6, Landroid/graphics/RectF;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v3

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v4, v6

    .line 652
    const/4 v6, 0x2

    move v5, v6

    :goto_1
    move v6, v5

    const/4 v7, 0x6

    if-le v6, v7, :cond_3

    .line 659
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgElement;

    move-object v5, v6

    .line 660
    move-object v6, v5

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_8

    .line 661
    move-object v6, v5

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->left:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->top:F

    move-object v9, v4

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 665
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 653
    :cond_3
    move-object v6, v3

    move v7, v5

    aget v6, v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move-object v6, v4

    move-object v7, v3

    move v8, v5

    aget v7, v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 654
    :cond_4
    move-object v6, v3

    move v7, v5

    aget v6, v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    move-object v6, v4

    move-object v7, v3

    move v8, v5

    aget v7, v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 655
    :cond_5
    move-object v6, v3

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    move-object v6, v4

    move-object v7, v3

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 656
    :cond_6
    move-object v6, v3

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    move-object v6, v4

    move-object v7, v3

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 652
    :cond_7
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 663
    :cond_8
    move-object v6, v5

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->left:F

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->top:F

    move-object v9, v4

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto :goto_2
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 14

    .prologue
    .line 1981
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x1000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1983
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 1986
    :cond_0
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x800

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1988
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1991
    :cond_1
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1993
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1994
    move-object v8, v1

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v9, :cond_2a

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1997
    :cond_2
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x4

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1999
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2003
    :cond_3
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x1805

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2005
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2008
    :cond_4
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x2

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2010
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2014
    :cond_5
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2016
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2017
    move-object v8, v1

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v9, :cond_2b

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 2020
    :cond_6
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x10

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2022
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2025
    :cond_7
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x1818

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2027
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2030
    :cond_8
    move-object v8, v0

    move-object v9, v2

    const-wide v10, 0x800000000L

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2032
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2035
    :cond_9
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x20

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2037
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2038
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v1

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2041
    :cond_a
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x40

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2043
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2044
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I

    move-result-object v8

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2060
    :cond_b
    :goto_2
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x80

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2062
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2063
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I

    move-result-object v8

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 2079
    :cond_c
    :goto_3
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x100

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2081
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2082
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2085
    :cond_d
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x200

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2087
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2090
    :cond_e
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x400

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2092
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2095
    :cond_f
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x600

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2098
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_2c

    .line 2100
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v8

    .line 2128
    :cond_10
    :goto_4
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x4000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2130
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v8

    move v3, v8

    .line 2131
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2132
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2133
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    move-object v10, v0

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2136
    :cond_11
    move-object v8, v0

    move-object v9, v2

    const-wide/16 v10, 0x2000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2138
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2141
    :cond_12
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x8000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2144
    move-object v8, v2

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_31

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_31

    .line 2145
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x64

    add-int/lit8 v9, v9, -0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2152
    :cond_13
    :goto_5
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x10000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2154
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2158
    :cond_14
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x1a000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2160
    const/4 v8, 0x0

    move-object v3, v8

    .line 2161
    const/4 v8, 0x0

    move-object v4, v8

    .line 2163
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v8, :cond_16

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v8, :cond_16

    .line 2164
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v8

    move-object v3, v8

    .line 2166
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :cond_15
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_33

    .line 2175
    :cond_16
    :goto_6
    move-object v8, v4

    if-nez v8, :cond_17

    .line 2177
    move-object v8, v0

    const-string v9, "sans-serif"

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object v4, v8

    .line 2179
    :cond_17
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 2180
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 2183
    :cond_18
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x20000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2185
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2186
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v9, v10, :cond_35

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2187
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v9, v10, :cond_36

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2190
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_19

    .line 2191
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v9, v10, :cond_37

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2192
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v10, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v9, v10, :cond_38

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2196
    :cond_19
    move-object v8, v0

    move-object v9, v2

    const-wide v10, 0x1000000000L

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2198
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2201
    :cond_1a
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x40000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2203
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2206
    :cond_1b
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x80000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2208
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2211
    :cond_1c
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x200000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2213
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2216
    :cond_1d
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x400000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2218
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2221
    :cond_1e
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x800000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2223
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2226
    :cond_1f
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x1000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2228
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2231
    :cond_20
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x2000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 2233
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2236
    :cond_21
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x100000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 2238
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2241
    :cond_22
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x10000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2243
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2246
    :cond_23
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x20000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2248
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2251
    :cond_24
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x40000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2253
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2256
    :cond_25
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x4000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2258
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2261
    :cond_26
    move-object v8, v0

    move-object v9, v2

    const-wide/32 v10, 0x8000000

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2263
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2266
    :cond_27
    move-object v8, v0

    move-object v9, v2

    const-wide v10, 0x200000000L

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2268
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2271
    :cond_28
    move-object v8, v0

    move-object v9, v2

    const-wide v10, 0x400000000L

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 2273
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2276
    :cond_29
    return-void

    .line 1994
    :cond_2a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2017
    :cond_2b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2047
    :pswitch_0
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2048
    goto/16 :goto_2

    .line 2050
    :pswitch_1
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2051
    goto/16 :goto_2

    .line 2053
    :pswitch_2
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2054
    goto/16 :goto_2

    .line 2066
    :pswitch_3
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2067
    goto/16 :goto_3

    .line 2069
    :pswitch_4
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2070
    goto/16 :goto_3

    .line 2072
    :pswitch_5
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2073
    goto/16 :goto_3

    .line 2104
    :cond_2c
    const/4 v8, 0x0

    move v3, v8

    .line 2105
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v8, v8

    move v4, v8

    .line 2108
    move v8, v4

    const/4 v9, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2d

    move v8, v4

    :goto_b
    move v5, v8

    .line 2109
    move v8, v5

    new-array v8, v8, [F

    move-object v6, v8

    .line 2110
    const/4 v8, 0x0

    move v7, v8

    :goto_c
    move v8, v7

    move v9, v5

    if-lt v8, v9, :cond_2e

    .line 2114
    move v8, v3

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2f

    .line 2115
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v8

    .line 2116
    goto/16 :goto_4

    .line 2108
    :cond_2d
    move v8, v4

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    goto :goto_b

    .line 2111
    :cond_2e
    move-object v8, v6

    move v9, v7

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    move v11, v7

    move v12, v4

    rem-int/2addr v11, v12

    aget-object v10, v10, v11

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    aput v10, v8, v9

    .line 2112
    move v8, v3

    move-object v9, v6

    move v10, v7

    aget v9, v9, v10

    add-float/2addr v8, v9

    move v3, v8

    .line 2110
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 2117
    :cond_2f
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    move v7, v8

    .line 2118
    move v8, v7

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_30

    .line 2121
    move v8, v3

    move v9, v7

    move v10, v3

    rem-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 2123
    :cond_30
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/DashPathEffect;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    move v12, v7

    invoke-direct {v10, v11, v12}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v8

    goto/16 :goto_4

    .line 2146
    :cond_31
    move-object v8, v2

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_32

    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x384

    if-ge v8, v9, :cond_32

    .line 2147
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x64

    add-int/lit8 v9, v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2149
    :cond_32
    move-object v8, v1

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object v9, v2

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2166
    :cond_33
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 2167
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object v4, v8

    .line 2168
    move-object v8, v4

    if-nez v8, :cond_34

    move-object v8, v3

    if-eqz v8, :cond_34

    .line 2169
    move-object v8, v3

    move-object v9, v5

    move-object v10, v1

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v11, v1

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object v4, v8

    .line 2171
    :cond_34
    move-object v8, v4

    if-eqz v8, :cond_15

    .line 2172
    goto/16 :goto_6

    .line 2186
    :cond_35
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2187
    :cond_36
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 2191
    :cond_37
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 2192
    :cond_38
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 2044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2063
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 9

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 385
    move-object v6, v1

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 388
    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v6, :cond_0

    .line 389
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 392
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 394
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :cond_1
    :goto_1
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 403
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v6, :cond_3

    .line 404
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 405
    :cond_3
    return-void

    .line 384
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 394
    :cond_5
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/CSSParser$Rule;

    move-object v4, v6

    .line 396
    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1
.end method

.method private viewportFill()V
    .locals 4

    .prologue
    .line 2368
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v2, :cond_1

    .line 2369
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$Colour;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v1, v2

    .line 2375
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 2376
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    const/16 v3, 0x18

    shl-int/lit8 v2, v2, 0x18

    move v3, v1

    or-int/2addr v2, v3

    move v1, v2

    .line 2378
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2379
    :goto_1
    return-void

    .line 2370
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v2, :cond_2

    .line 2371
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v1, v2

    .line 2372
    goto :goto_0

    .line 2373
    :cond_2
    goto :goto_1
.end method

.method private visible()Z
    .locals 2

    .prologue
    .line 1881
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1882
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .line 1883
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SVGAndroidRenderer"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 493
    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    move v0, v1

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 3

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_0

    .line 240
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v0, v1

    .line 242
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    move-object v0, v1

    goto :goto_0
.end method

.method protected getDPI()F
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    move v0, v1

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 12

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 252
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    .line 254
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v6

    move-object v5, v6

    .line 256
    move-object v6, v5

    if-nez v6, :cond_0

    .line 257
    const-string v6, "Nothing to render. Document is empty."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :goto_0
    return-void

    .line 262
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 264
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 267
    move-object v6, v0

    move-object v7, v5

    move-object v8, v5

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v9, v5

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 268
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    .line 269
    :goto_1
    move-object v11, v3

    if-eqz v11, :cond_2

    move-object v11, v3

    .line 267
    :goto_2
    invoke-direct/range {v6 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 270
    goto :goto_0

    .line 268
    :cond_1
    move-object v10, v5

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 269
    :cond_2
    move-object v11, v5

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_2
.end method
