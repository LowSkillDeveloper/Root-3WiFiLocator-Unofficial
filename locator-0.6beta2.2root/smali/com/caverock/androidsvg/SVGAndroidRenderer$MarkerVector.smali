.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerVector"
.end annotation


# instance fields
.field public dx:F

.field public dy:F

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V
    .locals 13

    .prologue
    .line 2644
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2643
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 2641
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2645
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    .line 2646
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    .line 2648
    move v8, v4

    move v9, v4

    mul-float/2addr v8, v9

    move v9, v5

    move v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 2649
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 2650
    move-object v8, v0

    move v9, v4

    float-to-double v9, v9

    move-wide v11, v6

    div-double/2addr v9, v11

    double-to-float v9, v9

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2651
    move-object v8, v0

    move v9, v5

    float-to-double v9, v9

    move-wide v11, v6

    div-double/2addr v9, v11

    double-to-float v9, v9

    iput v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2653
    :cond_0
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 14

    .prologue
    .line 2660
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v7, v8

    move v3, v7

    .line 2661
    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v7, v8

    move v4, v7

    .line 2662
    move v7, v3

    move v8, v3

    mul-float/2addr v7, v8

    move v8, v4

    move v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-wide v5, v7

    .line 2663
    move-wide v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 2664
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move v9, v3

    float-to-double v9, v9

    move-wide v11, v5

    div-double/2addr v9, v11

    double-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2665
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move v9, v4

    float-to-double v9, v9

    move-wide v11, v5

    div-double/2addr v9, v11

    double-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2667
    :cond_0
    return-void
.end method

.method public add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 6

    .prologue
    .line 2671
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move-object v4, v1

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 2672
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move-object v4, v1

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 2673
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2678
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
