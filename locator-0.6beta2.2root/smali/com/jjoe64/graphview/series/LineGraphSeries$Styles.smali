.class final Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;
.super Ljava/lang/Object;
.source "LineGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/series/LineGraphSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Styles"
.end annotation


# instance fields
.field private backgroundColor:I

.field private dataPointsRadius:F

.field private drawBackground:Z

.field private drawDataPoints:Z

.field private thickness:I

.field final synthetic this$0:Lcom/jjoe64/graphview/series/LineGraphSeries;


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/series/LineGraphSeries;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->this$0:Lcom/jjoe64/graphview/series/LineGraphSeries;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->thickness:I

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawBackground:Z

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawDataPoints:Z

    .line 71
    move-object v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->dataPointsRadius:F

    .line 79
    move-object v2, v0

    const/16 v3, 0x64

    const/16 v4, 0xac

    const/16 v5, 0xda

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v2, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->backgroundColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/series/LineGraphSeries;Lcom/jjoe64/graphview/series/LineGraphSeries$1;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/LineGraphSeries;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->thickness:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->thickness:I

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method static synthetic access$202(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->backgroundColor:I

    move v0, v2

    return v0
.end method

.method static synthetic access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawBackground:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$302(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawBackground:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawDataPoints:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$402(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->drawDataPoints:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$500(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)F
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->dataPointsRadius:F

    move v0, v1

    return v0
.end method

.method static synthetic access$502(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;F)F
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->dataPointsRadius:F

    move v0, v2

    return v0
.end method
