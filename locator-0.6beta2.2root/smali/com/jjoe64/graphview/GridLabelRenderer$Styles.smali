.class public final Lcom/jjoe64/graphview/GridLabelRenderer$Styles;
.super Ljava/lang/Object;
.source "GridLabelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GridLabelRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Styles"
.end annotation


# instance fields
.field public gridColor:I

.field gridStyle:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public highlightZeroLines:Z

.field public horizontalAxisTitleColor:I

.field public horizontalAxisTitleTextSize:F

.field public horizontalLabelsColor:I

.field horizontalLabelsVisible:Z

.field labelsSpace:I

.field public padding:I

.field public textSize:F

.field final synthetic this$0:Lcom/jjoe64/graphview/GridLabelRenderer;

.field public verticalAxisTitleColor:I

.field public verticalAxisTitleTextSize:F

.field public verticalLabelsAlign:Landroid/graphics/Paint$Align;

.field public verticalLabelsColor:I

.field public verticalLabelsSecondScaleAlign:Landroid/graphics/Paint$Align;

.field public verticalLabelsSecondScaleColor:I

.field verticalLabelsVisible:Z


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GridLabelRenderer;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/GridLabelRenderer$Styles;->this$0:Lcom/jjoe64/graphview/GridLabelRenderer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
