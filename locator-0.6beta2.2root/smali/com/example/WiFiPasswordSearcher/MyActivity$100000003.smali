.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    return-void
.end method
