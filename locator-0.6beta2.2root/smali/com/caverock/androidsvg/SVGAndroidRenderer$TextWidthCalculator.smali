.class Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextWidthCalculator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 5

    .prologue
    .line 1617
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1619
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V
    .locals 5

    .prologue
    .line 1617
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    return-void
.end method


# virtual methods
.method public processText(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1624
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v4

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    .line 1625
    return-void
.end method
