.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlainTextToPath"
.end annotation


# instance fields
.field public textAsPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V
    .locals 8

    .prologue
    .line 3696
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3695
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3697
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    .line 3698
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    .line 3699
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    .line 3700
    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 4

    .prologue
    .line 3705
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v2, :cond_0

    .line 3707
    const-string v2, "Using <textPath> elements in a clip path is not supported."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$6(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3708
    const/4 v2, 0x0

    move v0, v2

    .line 3710
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public processText(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 3716
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3719
    new-instance v3, Landroid/graphics/Path;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v2, v3

    .line 3720
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 3721
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 3725
    :cond_0
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v5

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    .line 3726
    return-void
.end method
