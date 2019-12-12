.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlainTextDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .locals 7

    .prologue
    .line 1366
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1365
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1367
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1368
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1369
    return-void
.end method


# virtual methods
.method public processText(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1374
    move-object v0, p0

    move-object v1, p1

    const-string v2, "TextSequence render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_0

    .line 1379
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1380
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_1

    .line 1381
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1385
    :cond_1
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v4

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1386
    return-void
.end method
