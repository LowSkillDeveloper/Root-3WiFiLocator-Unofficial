.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTrafficStatsCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    }
.end annotation


# instance fields
.field private mThreadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;-><init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V

    iput-object v2, v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 55
    return-void
.end method

.method public getThreadStatsTag()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    iget v1, v1, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    move v0, v1

    return v0
.end method

.method public incrementOperationCount(I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public incrementOperationCount(II)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setThreadStatsTag(I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    move v3, v1

    iput v3, v2, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 73
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
