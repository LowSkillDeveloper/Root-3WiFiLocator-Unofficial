.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;
.super Ljava/lang/Object;
.source "WPSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;)Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
