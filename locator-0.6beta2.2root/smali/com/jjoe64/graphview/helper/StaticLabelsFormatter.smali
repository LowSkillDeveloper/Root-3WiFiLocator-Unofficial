.class public Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;
.super Ljava/lang/Object;
.source "StaticLabelsFormatter.java"

# interfaces
.implements Lcom/jjoe64/graphview/LabelFormatter;


# instance fields
.field protected mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

.field protected final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field protected mHorizontalLabels:[Ljava/lang/String;

.field protected mVerticalLabels:[Ljava/lang/String;

.field protected mViewport:Lcom/jjoe64/graphview/Viewport;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->init([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->init([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 84
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->init([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;[Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 100
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->init([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected adjust()V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-interface {v1, v2}, Lcom/jjoe64/graphview/LabelFormatter;->setViewport(Lcom/jjoe64/graphview/Viewport;)V

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "You need at least 2 vertical labels if you use static label formatter."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->setNumVerticalLabels(I)V

    .line 202
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 203
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "You need at least 2 horizontal labels if you use static label formatter."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GridLabelRenderer;->setNumHorizontalLabels(I)V

    .line 208
    :cond_3
    return-void
.end method

.method public formatLabel(DZ)Ljava/lang/String;
    .locals 15

    .prologue
    .line 163
    move-object v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move v11, v3

    if-eqz v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 164
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v11

    move-wide v4, v11

    .line 165
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v11

    move-wide v6, v11

    .line 166
    move-wide v11, v6

    move-wide v13, v4

    sub-double/2addr v11, v13

    move-wide v8, v11

    .line 167
    move-wide v11, v1

    move-wide v13, v4

    sub-double/2addr v11, v13

    move-wide v1, v11

    .line 168
    move-wide v11, v1

    move-wide v13, v8

    div-double/2addr v11, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v11, v11

    move v10, v11

    .line 169
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    move v12, v10

    aget-object v11, v11, v12

    move-object v0, v11

    .line 178
    :goto_0
    return-object v0

    .line 170
    :cond_0
    move v11, v3

    if-nez v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 171
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v11

    move-wide v4, v11

    .line 172
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v11

    move-wide v6, v11

    .line 173
    move-wide v11, v6

    move-wide v13, v4

    sub-double/2addr v11, v13

    move-wide v8, v11

    .line 174
    move-wide v11, v1

    move-wide v13, v4

    sub-double/2addr v11, v13

    move-wide v1, v11

    .line 175
    move-wide v11, v1

    move-wide v13, v8

    div-double/2addr v11, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v11, v11

    move v10, v11

    .line 176
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    move v12, v10

    aget-object v11, v11, v12

    move-object v0, v11

    goto :goto_0

    .line 178
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    move-wide v12, v1

    move v14, v3

    invoke-interface {v11, v12, v13, v14}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_0
.end method

.method protected init([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 113
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    if-nez v4, :cond_0

    .line 114
    move-object v4, v0

    new-instance v5, Lcom/jjoe64/graphview/DefaultLabelFormatter;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/jjoe64/graphview/DefaultLabelFormatter;-><init>()V

    iput-object v5, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 117
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    .line 118
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDynamicLabelFormatter(Lcom/jjoe64/graphview/LabelFormatter;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mDynamicLabelFormatter:Lcom/jjoe64/graphview/LabelFormatter;

    .line 133
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->adjust()V

    .line 134
    return-void
.end method

.method public setHorizontalLabels([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mHorizontalLabels:[Ljava/lang/String;

    .line 142
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->adjust()V

    .line 143
    return-void
.end method

.method public setVerticalLabels([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mVerticalLabels:[Ljava/lang/String;

    .line 151
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->adjust()V

    .line 152
    return-void
.end method

.method public setViewport(Lcom/jjoe64/graphview/Viewport;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    .line 188
    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->adjust()V

    .line 189
    return-void
.end method
