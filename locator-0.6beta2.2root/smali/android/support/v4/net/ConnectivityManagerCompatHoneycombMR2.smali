.class Landroid/support/v4/net/ConnectivityManagerCompatHoneycombMR2;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v1, v3

    .line 38
    move-object v3, v1

    if-nez v3, :cond_0

    .line 40
    const/4 v3, 0x1

    move v0, v3

    .line 58
    :goto_0
    return v0

    .line 43
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    move v2, v3

    .line 44
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 58
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 51
    :pswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
