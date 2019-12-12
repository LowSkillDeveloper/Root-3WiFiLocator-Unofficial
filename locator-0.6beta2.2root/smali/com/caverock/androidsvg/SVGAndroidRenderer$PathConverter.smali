.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathConverter"
.end annotation


# instance fields
.field lastX:F

.field lastY:F

.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V
    .locals 7

    .prologue
    .line 2393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2392
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2389
    move-object v3, v0

    new-instance v4, Landroid/graphics/Path;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    .line 2394
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2395
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 18

    .prologue
    .line 2437
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    move-object v9, v0

    iget v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move-object/from16 v17, v0

    invoke-static/range {v8 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2438
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2439
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2440
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 2445
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 2446
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 14

    .prologue
    .line 2421
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 2422
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2423
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2424
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 2399
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move-object v0, v1

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 6

    .prologue
    .line 2413
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2414
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2415
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2416
    return-void
.end method

.method public moveTo(FF)V
    .locals 6

    .prologue
    .line 2405
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2406
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2407
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2408
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 10

    .prologue
    .line 2429
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2430
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2431
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2432
    return-void
.end method
