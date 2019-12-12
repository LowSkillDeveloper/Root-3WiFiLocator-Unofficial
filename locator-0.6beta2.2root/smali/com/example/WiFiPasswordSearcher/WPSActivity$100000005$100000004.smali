.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;
.super Ljava/lang/Object;
.source "WPSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

.field private final val$BSSDWps:Ljava/lang/String;

.field private final val$ESSDWps:Ljava/lang/String;

.field private final val$fPosition:I


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$BSSDWps:Ljava/lang/String;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$fPosition:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$ESSDWps:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;)Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v9, v2

    packed-switch v9, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 235
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000001(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 237
    sget-object v9, Lcom/example/WiFiPasswordSearcher/WPSActivity;->context:Landroid/content/Context;

    const-string v10, "Wi-Fi interface is disabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 238
    goto :goto_0

    .line 240
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1

    .line 242
    new-instance v9, Landroid/net/wifi/WpsInfo;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/net/wifi/WpsInfo;-><init>()V

    move-object v4, v9

    .line 243
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$BSSDWps:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 244
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v10}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v10

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v11, v0

    iget v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$fPosition:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 245
    move-object v9, v4

    const/4 v10, 0x2

    iput v10, v9, Landroid/net/wifi/WpsInfo;->setup:I

    .line 247
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000001(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000003(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager$WpsCallback;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 264
    :goto_1
    goto :goto_0

    .line 251
    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v9

    .line 252
    move-object v9, v4

    const-string v10, "Unsupported Android version"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "This function requires Android 5.0 (Lollipop) with API 21 or higher. Please upgrade your system."

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "OK"

    new-instance v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004$100000003;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 261
    move-object v9, v4

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    move-object v5, v9

    .line 262
    move-object v9, v5

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 266
    :pswitch_1
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v10, v0

    iget v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$fPosition:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v4, v9

    .line 267
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v10, :cond_2

    const-string v9, "\'\'"

    move-object v4, v9

    .line 268
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$ESSDWps:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$BSSDWps:Ljava/lang/String;

    move-object v11, v4

    invoke-static {v9, v10, v11}, Lcom/example/WiFiPasswordSearcher/WPS;->connectRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    goto/16 :goto_0

    .line 271
    :pswitch_2
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v10, v0

    iget v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->val$fPosition:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 272
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Pin \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\" copied"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 276
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v6, v9

    .line 277
    const-string v9, "text"

    move-object v10, v5

    invoke-static {v9, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v9

    move-object v7, v9

    .line 278
    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_2
    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v9

    move-object v6, v9

    goto :goto_2

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
