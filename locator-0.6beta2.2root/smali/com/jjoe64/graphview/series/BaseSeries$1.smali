.class Lcom/jjoe64/graphview/series/BaseSeries$1;
.super Ljava/lang/Object;
.source "BaseSeries.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/series/BaseSeries;->getValues(DD)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field org:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field plusOne:Z

.field final synthetic this$0:Lcom/jjoe64/graphview/series/BaseSeries;

.field final synthetic val$from:D

.field final synthetic val$until:D


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/series/BaseSeries;DD)V
    .locals 12

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->this$0:Lcom/jjoe64/graphview/series/BaseSeries;

    move-object v8, v0

    move-wide v9, v2

    iput-wide v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    move-object v8, v0

    move-wide v9, v4

    iput-wide v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 171
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/series/BaseSeries$1;->this$0:Lcom/jjoe64/graphview/series/BaseSeries;

    invoke-static {v9}, Lcom/jjoe64/graphview/series/BaseSeries;->access$000(Lcom/jjoe64/graphview/series/BaseSeries;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    .line 172
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 173
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 174
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    .line 178
    const/4 v8, 0x0

    move v6, v8

    .line 179
    const/4 v8, 0x0

    move-object v7, v8

    .line 180
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 181
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object v7, v8

    .line 183
    :cond_0
    move-object v8, v7

    invoke-interface {v8}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 184
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 185
    const/4 v8, 0x1

    move v6, v8

    .line 198
    :cond_1
    :goto_0
    move v8, v6

    if-nez v8, :cond_2

    .line 199
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 201
    :cond_2
    return-void

    .line 195
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object v7, v8

    .line 187
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 188
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 189
    move-object v8, v0

    iget-object v8, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v8}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_3

    .line 190
    const/4 v8, 0x1

    move v6, v8

    .line 191
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 192
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 193
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v1}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Lcom/jjoe64/graphview/series/DataPointInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jjoe64/graphview/series/BaseSeries$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    move-object v1, v2

    .line 212
    move-object v2, v1

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 213
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    .line 215
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    if-eqz v2, :cond_1

    .line 216
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 217
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 220
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 218
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    goto :goto_0

    .line 219
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    goto :goto_0

    .line 222
    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/jjoe64/graphview/series/BaseSeries$1;->next()Lcom/jjoe64/graphview/series/DataPointInterface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
