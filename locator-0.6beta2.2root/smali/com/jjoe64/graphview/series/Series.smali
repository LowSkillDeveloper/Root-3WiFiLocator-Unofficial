.class public interface abstract Lcom/jjoe64/graphview/series/Series;
.super Ljava/lang/Object;
.source "Series.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/series/DataPointInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
.end method

.method public abstract getColor()I
.end method

.method public abstract getHighestValueX()D
.end method

.method public abstract getHighestValueY()D
.end method

.method public abstract getLowestValueX()D
.end method

.method public abstract getLowestValueY()D
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getValues(DD)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onGraphViewAttached(Lcom/jjoe64/graphview/GraphView;)V
.end method

.method public abstract onTap(FF)V
.end method

.method public abstract setOnDataPointTapListener(Lcom/jjoe64/graphview/series/OnDataPointTapListener;)V
.end method
