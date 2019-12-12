.class public Landroid/support/v4/net/TrafficStatsCompatIcs;
.super Ljava/lang/Object;
.source "TrafficStatsCompatIcs.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 30
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 2

    .prologue
    .line 37
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 38
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 4

    .prologue
    .line 41
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 42
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 2

    .prologue
    .line 45
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 46
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 50
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 54
    return-void
.end method
