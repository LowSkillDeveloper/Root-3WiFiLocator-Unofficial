.class public abstract Lcom/jjoe64/graphview/series/BaseSeries;
.super Ljava/lang/Object;
.source "BaseSeries.java"

# interfaces
.implements Lcom/jjoe64/graphview/series/Series;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/series/DataPointInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jjoe64/graphview/series/Series",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mColor:I

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mDataPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/PointF;",
            "TE;>;"
        }
    .end annotation
.end field

.field private mGraphViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jjoe64/graphview/GraphView;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnDataPointTapListener:Lcom/jjoe64/graphview/series/OnDataPointTapListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    .line 64
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mDataPoints:Ljava/util/Map;

    .line 76
    move-object v1, v0

    const v2, -0xff8834

    iput v2, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mColor:I

    .line 93
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mGraphViews:Ljava/util/List;

    .line 94
    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    .line 64
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mDataPoints:Ljava/util/Map;

    .line 76
    move-object v6, v0

    const v7, -0xff8834

    iput v7, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mColor:I

    .line 103
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mGraphViews:Ljava/util/List;

    .line 104
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 105
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jjoe64/graphview/series/BaseSeries;)Ljava/util/List;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public appendData(Lcom/jjoe64/graphview/series/DataPointInterface;ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZI)V"
        }
    .end annotation

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/jjoe64/graphview/series/BaseSeries;->checkValueOrder(Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 385
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v7

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v10, v0

    iget-object v10, v10, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v9}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 386
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "new x-value must be greater then the last value. x-values has to be ordered in ASC."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 388
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    monitor-enter v7

    .line 389
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .line 390
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 392
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 398
    :goto_0
    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 405
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mGraphViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/GraphView;

    move-object v6, v7

    .line 406
    move-object v7, v6

    move v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 407
    move v7, v2

    if-eqz v7, :cond_1

    .line 408
    move-object v7, v6

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jjoe64/graphview/Viewport;->scrollToEnd()V

    .line 410
    :cond_1
    goto :goto_2

    .line 395
    :cond_2
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 396
    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7

    .line 401
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 411
    :cond_4
    return-void
.end method

.method protected checkValueOrder(Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 11

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 429
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 431
    move-object v5, v1

    invoke-interface {v5}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v5

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 432
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "new x-value must be greater then the last value. x-values has to be ordered in ASC."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 435
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v5}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v5

    move-wide v2, v5

    .line 437
    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 438
    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v5}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v5

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 439
    move-wide v5, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 440
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "The order of the values is not correct. X-Values have to be ordered ASC. First the lowest x value and at least the highest x value."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 442
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v5}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v5

    move-wide v2, v5

    .line 437
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    :cond_3
    return-void
.end method

.method protected findDataPoint(FF)Lcom/jjoe64/graphview/series/DataPointInterface;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    .prologue
    .line 304
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/high16 v12, 0x7fc00000    # Float.NaN

    move v3, v12

    .line 305
    const/4 v12, 0x0

    move-object v4, v12

    .line 306
    move-object v12, v0

    iget-object v12, v12, Lcom/jjoe64/graphview/series/BaseSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    :goto_0
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v6, v12

    .line 307
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move v7, v12

    .line 308
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move v8, v12

    .line 309
    move v12, v1

    move v9, v12

    .line 310
    move v12, v2

    move v10, v12

    .line 312
    move v12, v7

    move v13, v9

    sub-float/2addr v12, v13

    move v13, v7

    move v14, v9

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    move v13, v8

    move v14, v10

    sub-float/2addr v13, v14

    move v14, v8

    move v15, v10

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v11, v12

    .line 313
    move-object v12, v4

    if-eqz v12, :cond_0

    move v12, v11

    move v13, v3

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 314
    :cond_0
    move v12, v11

    move v3, v12

    .line 315
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object v4, v12

    .line 317
    :cond_1
    goto :goto_0

    .line 318
    :cond_2
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 319
    move v12, v3

    const/high16 v13, 0x42f00000    # 120.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 320
    move-object v12, v4

    move-object v0, v12

    .line 323
    :goto_1
    return-object v0

    :cond_3
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_1
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mColor:I

    move v0, v1

    return v0
.end method

.method public getHighestValueX()D
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v1}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method public getHighestValueY()D
    .locals 10

    .prologue
    .line 144
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 152
    :goto_0
    return-wide v0

    .line 145
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v6

    move-wide v1, v6

    .line 146
    const/4 v6, 0x1

    move v3, v6

    :goto_1
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 147
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 148
    move-wide v6, v1

    move-wide v8, v4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 149
    move-wide v6, v4

    move-wide v1, v6

    .line 146
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_2
    move-wide v6, v1

    move-wide v0, v6

    goto :goto_0
.end method

.method public getLowestValueX()D
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v1}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method public getLowestValueY()D
    .locals 10

    .prologue
    .line 129
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 137
    :goto_0
    return-wide v0

    .line 130
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v6

    move-wide v1, v6

    .line 131
    const/4 v6, 0x1

    move v3, v6

    :goto_1
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 132
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v6

    move-wide v4, v6

    .line 133
    move-wide v6, v1

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 134
    move-wide v6, v4

    move-wide v1, v6

    .line 131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_2
    move-wide v6, v1

    move-wide v0, v6

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getValues(DD)Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide v5, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/jjoe64/graphview/series/BaseSeries;->getLowestValueX()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    move-wide v5, v3

    move-object v7, v0

    invoke-virtual {v7}, Lcom/jjoe64/graphview/series/BaseSeries;->getHighestValueX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    .line 168
    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lcom/jjoe64/graphview/series/BaseSeries$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/jjoe64/graphview/series/BaseSeries$1;-><init>(Lcom/jjoe64/graphview/series/BaseSeries;DD)V

    move-object v0, v5

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onGraphViewAttached(Lcom/jjoe64/graphview/GraphView;)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/BaseSeries;->mGraphViews:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 372
    return-void
.end method

.method public onTap(FF)V
    .locals 7

    .prologue
    .line 287
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/series/BaseSeries;->mOnDataPointTapListener:Lcom/jjoe64/graphview/series/OnDataPointTapListener;

    if-eqz v4, :cond_0

    .line 288
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/jjoe64/graphview/series/BaseSeries;->findDataPoint(FF)Lcom/jjoe64/graphview/series/DataPointInterface;

    move-result-object v4

    move-object v3, v4

    .line 289
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 290
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/series/BaseSeries;->mOnDataPointTapListener:Lcom/jjoe64/graphview/series/OnDataPointTapListener;

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/jjoe64/graphview/series/OnDataPointTapListener;->onTap(Lcom/jjoe64/graphview/series/Series;Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected registerDataPoint(FFLcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTE;)V"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/series/BaseSeries;->mDataPoints:Ljava/util/Map;

    new-instance v5, Landroid/graphics/PointF;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 335
    return-void
.end method

.method public resetData([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 353
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 354
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mData:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/series/BaseSeries;->checkValueOrder(Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 359
    move-object v6, v0

    iget-object v6, v6, Lcom/jjoe64/graphview/series/BaseSeries;->mGraphViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/GraphView;

    move-object v3, v6

    .line 360
    move-object v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 361
    goto :goto_1

    .line 362
    :cond_1
    return-void
.end method

.method protected resetDataPoints()V
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 342
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/jjoe64/graphview/series/BaseSeries;->mColor:I

    .line 267
    return-void
.end method

.method public setOnDataPointTapListener(Lcom/jjoe64/graphview/series/OnDataPointTapListener;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries;->mOnDataPointTapListener:Lcom/jjoe64/graphview/series/OnDataPointTapListener;

    .line 276
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries;->mTitle:Ljava/lang/String;

    .line 249
    return-void
.end method
