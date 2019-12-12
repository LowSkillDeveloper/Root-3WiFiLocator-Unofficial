.class Lcom/example/WiFiPasswordSearcher/MyScanResult;
.super Ljava/lang/Object;
.source "MyActivity.java"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public frequency:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
