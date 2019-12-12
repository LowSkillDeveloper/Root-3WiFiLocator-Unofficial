.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;
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
    name = "MarkerPositionCalculator"
.end annotation


# instance fields
.field private closepathReAdjustPending:Z

.field private lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation
.end field

.field private normalCubic:Z

.field private startArc:Z

.field private startX:F

.field private startY:F

.field private subpathStartIndex:I

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V
    .locals 7

    .prologue
    .line 2697
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2696
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2688
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    .line 2690
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2691
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2692
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    .line 2699
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2701
    move-object v3, v0

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz v3, :cond_0

    .line 2704
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2706
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2707
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2710
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz v3, :cond_1

    .line 2711
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2713
    :cond_1
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 18

    .prologue
    .line 2777
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    .line 2778
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2779
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move-object/from16 v17, v0

    invoke-static/range {v8 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2780
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2781
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2782
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 2787
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 2788
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lineTo(FF)V

    .line 2793
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2794
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 17

    .prologue
    .line 2753
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    iget-boolean v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    if-nez v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    if-eqz v8, :cond_1

    .line 2754
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2755
    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2756
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    .line 2758
    :cond_1
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move v11, v5

    move v12, v6

    move v13, v5

    move v14, v3

    sub-float/2addr v13, v14

    move v14, v6

    move v15, v4

    sub-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v7, v8

    .line 2759
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2760
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2761
    return-void
.end method

.method public getMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2717
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 13

    .prologue
    .line 2743
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2744
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2745
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v9, v10

    move v10, v2

    move-object v11, v0

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v3, v4

    .line 2746
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2747
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2748
    return-void
.end method

.method public moveTo(FF)V
    .locals 12

    .prologue
    .line 2723
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz v3, :cond_0

    .line 2726
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2728
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2729
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2731
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz v3, :cond_1

    .line 2732
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2734
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    .line 2735
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    .line 2736
    move-object v3, v0

    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move v7, v1

    move v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2737
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    .line 2738
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 15

    .prologue
    .line 2766
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2767
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2768
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move v9, v3

    move v10, v4

    move v11, v3

    move v12, v1

    sub-float/2addr v11, v12

    move v12, v4

    move v13, v2

    sub-float/2addr v12, v13

    invoke-direct/range {v7 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v5, v6

    .line 2769
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2770
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2771
    return-void
.end method
