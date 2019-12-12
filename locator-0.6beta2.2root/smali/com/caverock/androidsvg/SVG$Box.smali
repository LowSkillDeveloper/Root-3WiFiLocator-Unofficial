.class public Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Box"
.end annotation


# instance fields
.field public height:F

.field public minX:F

.field public minY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    .prologue
    .line 865
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 867
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 868
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 869
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 870
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 871
    return-void
.end method

.method public static fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;
    .locals 12

    .prologue
    .line 875
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v0

    sub-float/2addr v8, v9

    move v9, v3

    move v10, v1

    sub-float/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public maxX()F
    .locals 3

    .prologue
    .line 883
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public maxY()F
    .locals 3

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public toRectF()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 880
    move-object v0, p0

    new-instance v1, Landroid/graphics/RectF;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object v5, v0

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 894
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public union(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 5

    .prologue
    .line 888
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 889
    :cond_0
    move-object v2, v1

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 890
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 891
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 892
    :cond_3
    return-void
.end method
