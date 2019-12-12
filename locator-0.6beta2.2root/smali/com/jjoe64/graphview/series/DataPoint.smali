.class public Lcom/jjoe64/graphview/series/DataPoint;
.super Ljava/lang/Object;
.source "DataPoint.java"

# interfaces
.implements Lcom/jjoe64/graphview/series/DataPointInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14c8b20c415L


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/jjoe64/graphview/series/DataPoint;->x:D

    .line 41
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/jjoe64/graphview/series/DataPoint;->y:D

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;D)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v4, Lcom/jjoe64/graphview/series/DataPoint;->x:D

    .line 46
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/jjoe64/graphview/series/DataPoint;->y:D

    .line 47
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/jjoe64/graphview/series/DataPoint;->x:D

    move-wide v0, v1

    return-wide v0
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/jjoe64/graphview/series/DataPoint;->y:D

    move-wide v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/jjoe64/graphview/series/DataPoint;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/jjoe64/graphview/series/DataPoint;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
