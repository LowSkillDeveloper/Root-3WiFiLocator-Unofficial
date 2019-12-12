.class public final enum Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;
.super Ljava/lang/Enum;
.source "PointsGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/series/PointsGraphSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

.field public static final enum POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

.field public static final enum RECTANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

.field public static final enum TRIANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 69
    new-instance v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "POINT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .line 74
    new-instance v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRIANGLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->TRIANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .line 79
    new-instance v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RECTANGLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->RECTANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->TRIANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->RECTANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    aput-object v3, v1, v2

    sput-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->$VALUES:[Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    const-class v1, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->$VALUES:[Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    return-object v0
.end method
