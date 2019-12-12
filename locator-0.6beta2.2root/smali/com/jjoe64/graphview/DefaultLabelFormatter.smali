.class public Lcom/jjoe64/graphview/DefaultLabelFormatter;
.super Ljava/lang/Object;
.source "DefaultLabelFormatter.java"

# interfaces
.implements Lcom/jjoe64/graphview/LabelFormatter;


# instance fields
.field protected mNumberFormatter:[Ljava/text/NumberFormat;

.field protected mViewport:Lcom/jjoe64/graphview/Viewport;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/text/NumberFormat;

    iput-object v2, v1, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/text/NumberFormat;

    iput-object v4, v3, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    .line 64
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    const/4 v4, 0x0

    move-object v5, v2

    aput-object v5, v3, v4

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    .line 66
    return-void
.end method


# virtual methods
.method public formatLabel(DZ)Ljava/lang/String;
    .locals 13

    .prologue
    .line 86
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move v9, v3

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 87
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    if-nez v9, :cond_0

    .line 88
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v11

    aput-object v11, v9, v10

    .line 89
    move v9, v3

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v9

    :goto_1
    move-wide v5, v9

    .line 90
    move v9, v3

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v9

    :goto_2
    move-wide v7, v9

    .line 91
    move-wide v9, v5

    move-wide v11, v7

    sub-double/2addr v9, v11

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpg-double v9, v9, v11

    if-gez v9, :cond_4

    .line 92
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 103
    :cond_0
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    return-object v0

    .line 86
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 89
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v9

    goto :goto_1

    .line 90
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v9

    goto :goto_2

    .line 93
    :cond_4
    move-wide v9, v5

    move-wide v11, v7

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    .line 94
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 95
    :cond_5
    move-wide v9, v5

    move-wide v11, v7

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6

    .line 96
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 97
    :cond_6
    move-wide v9, v5

    move-wide v11, v7

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_7

    .line 98
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 100
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3
.end method

.method public setViewport(Lcom/jjoe64/graphview/Viewport;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    .line 74
    return-void
.end method
