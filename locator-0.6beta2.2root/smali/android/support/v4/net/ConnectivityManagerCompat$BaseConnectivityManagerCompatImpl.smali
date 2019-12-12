.class Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    move-object v2, v4

    .line 41
    move-object v4, v2

    if-nez v4, :cond_0

    .line 43
    const/4 v4, 0x1

    move v0, v4

    .line 54
    :goto_0
    return v0

    .line 46
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    move v3, v4

    .line 47
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 54
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 51
    :pswitch_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
