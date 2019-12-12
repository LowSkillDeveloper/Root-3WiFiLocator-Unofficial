.class Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoundsCalculator"
.end annotation


# instance fields
.field bbox:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .locals 8

    .prologue
    .line 1642
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1641
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1639
    move-object v4, v0

    new-instance v5, Landroid/graphics/RectF;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    .line 1643
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1644
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    .line 1645
    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 13

    .prologue
    .line 1650
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    instance-of v7, v7, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v7, :cond_2

    .line 1654
    move-object v7, v1

    check-cast v7, Lcom/caverock/androidsvg/SVG$TextPath;

    move-object v2, v7

    .line 1655
    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$TextContainer;->document:Lcom/caverock/androidsvg/SVG;

    move-object v8, v2

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v7

    move-object v3, v7

    .line 1656
    move-object v7, v3

    if-nez v7, :cond_0

    .line 1657
    const-string v7, "TextPath path reference \'%s\' not found"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$4(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    const/4 v7, 0x0

    move v0, v7

    .line 1669
    :goto_0
    return v0

    .line 1660
    :cond_0
    move-object v7, v3

    check-cast v7, Lcom/caverock/androidsvg/SVG$Path;

    move-object v4, v7

    .line 1661
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move-object v10, v4

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v7

    move-object v5, v7

    .line 1662
    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v7, :cond_1

    .line 1663
    move-object v7, v5

    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1664
    :cond_1
    new-instance v7, Landroid/graphics/RectF;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    move-object v6, v7

    .line 1665
    move-object v7, v5

    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1666
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1667
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1669
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public processText(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1675
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1677
    new-instance v4, Landroid/graphics/Rect;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v4

    .line 1679
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v4

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1680
    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v4

    .line 1682
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 1684
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1688
    :cond_0
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1689
    return-void
.end method
