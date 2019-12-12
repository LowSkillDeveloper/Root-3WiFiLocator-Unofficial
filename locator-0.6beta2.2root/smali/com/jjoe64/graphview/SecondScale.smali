.class public Lcom/jjoe64/graphview/SecondScale;
.super Ljava/lang/Object;
.source "SecondScale.java"


# instance fields
.field protected mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

.field private mMaxY:D

.field private mMinY:D

.field protected mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jjoe64/graphview/series/Series;",
            ">;"
        }
    .end annotation
.end field

.field protected final mViewport:Lcom/jjoe64/graphview/Viewport;

.field private mYAxisBoundsManual:Z


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Viewport;)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jjoe64/graphview/SecondScale;->mYAxisBoundsManual:Z

    .line 81
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/SecondScale;->mViewport:Lcom/jjoe64/graphview/Viewport;

    .line 82
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/SecondScale;->mSeries:Ljava/util/List;

    .line 83
    move-object v2, v0

    new-instance v3, Lcom/jjoe64/graphview/DefaultLabelFormatter;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/jjoe64/graphview/DefaultLabelFormatter;-><init>()V

    iput-object v3, v2, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/SecondScale;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-interface {v2, v3}, Lcom/jjoe64/graphview/LabelFormatter;->setViewport(Lcom/jjoe64/graphview/Viewport;)V

    .line 85
    return-void
.end method


# virtual methods
.method public addSeries(Lcom/jjoe64/graphview/series/Series;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/SecondScale;->mSeries:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 96
    return-void
.end method

.method public getLabelFormatter()Lcom/jjoe64/graphview/LabelFormatter;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v0, v1

    return-object v0
.end method

.method public getMaxY()D
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/jjoe64/graphview/SecondScale;->mMaxY:D

    move-wide v0, v1

    return-wide v0
.end method

.method public getMinY()D
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/jjoe64/graphview/SecondScale;->mMinY:D

    move-wide v0, v1

    return-wide v0
.end method

.method public getSeries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jjoe64/graphview/series/Series;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/SecondScale;->mSeries:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public isYAxisBoundsManual()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/SecondScale;->mYAxisBoundsManual:Z

    move v0, v1

    return v0
.end method

.method public setLabelFormatter(Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/SecondScale;->mLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/SecondScale;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-interface {v2, v3}, Lcom/jjoe64/graphview/LabelFormatter;->setViewport(Lcom/jjoe64/graphview/Viewport;)V

    .line 164
    return-void
.end method

.method public setMaxY(D)V
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/jjoe64/graphview/SecondScale;->mMaxY:D

    .line 118
    return-void
.end method

.method public setMinY(D)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/jjoe64/graphview/SecondScale;->mMinY:D

    .line 109
    return-void
.end method
