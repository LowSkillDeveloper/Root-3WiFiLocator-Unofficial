.class final Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;
.super Ljava/lang/Object;
.source "PointsGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/series/PointsGraphSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Styles"
.end annotation


# instance fields
.field shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

.field size:F

.field final synthetic this$0:Lcom/jjoe64/graphview/series/PointsGraphSeries;


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/series/PointsGraphSeries;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->this$0:Lcom/jjoe64/graphview/series/PointsGraphSeries;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/series/PointsGraphSeries;Lcom/jjoe64/graphview/series/PointsGraphSeries$1;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/PointsGraphSeries;)V

    return-void
.end method
