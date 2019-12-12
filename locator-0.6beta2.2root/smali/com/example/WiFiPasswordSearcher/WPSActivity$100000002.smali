.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000001;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onFailed(I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v8}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v1

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 211
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Boolean;

    move v13, v9

    move-object v14, v10

    move-object v9, v14

    move v10, v13

    move-object v11, v14

    move v13, v10

    move-object v14, v11

    move-object v10, v14

    move v11, v13

    invoke-direct {v10, v11}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v8, v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/Boolean;)V

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    const-string v8, "An error occurred"

    move-object v3, v8

    .line 163
    move v8, v1

    packed-switch v8, :pswitch_data_0

    .line 195
    const-string v8, "OH SHI*"

    move-object v3, v8

    .line 196
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unknown error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 200
    :goto_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 201
    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "OK"

    new-instance v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000001;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 210
    move-object v8, v5

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    move-object v6, v8

    .line 211
    move-object v8, v6

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 167
    :pswitch_0
    const-string v8, "WPS connection failed"

    move-object v3, v8

    .line 168
    const-string v8, "Root privileges are required to connect with <empty> pin."

    move-object v4, v8

    .line 169
    goto :goto_1

    .line 171
    :pswitch_1
    const-string v8, "Operation currently in progress."

    move-object v4, v8

    .line 172
    goto :goto_1

    .line 174
    :pswitch_2
    const-string v8, "Wi-Fi interface is busy."

    move-object v4, v8

    .line 175
    goto :goto_1

    .line 177
    :pswitch_3
    const-string v8, "Another WPS transaction is in progress."

    move-object v4, v8

    .line 178
    goto :goto_1

    .line 180
    :pswitch_4
    const-string v8, "WEP encryption prohibited."

    move-object v4, v8

    .line 181
    goto :goto_1

    .line 183
    :pswitch_5
    const-string v8, "TKIP-only encryption prohibited."

    move-object v4, v8

    .line 184
    goto :goto_1

    .line 186
    :pswitch_6
    const-string v8, "Selected WPS PIN is not correct."

    move-object v4, v8

    .line 187
    goto :goto_1

    .line 189
    :pswitch_7
    const-string v8, "WPS connection timeout"

    move-object v3, v8

    .line 190
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "The network did not respond "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "due to low signal or some other reasons. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "You may try again."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 193
    goto/16 :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    move v9, v4

    move-object v10, v5

    move-object v4, v10

    move v5, v9

    move-object v6, v10

    move v9, v5

    move-object v10, v6

    move-object v5, v10

    move v6, v9

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/Boolean;)V

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    new-instance v4, Landroid/app/ProgressDialog;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    const-string v4, "Connecting to the network..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    const-string v5, "Cancel"

    new-instance v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onSucceeded()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Ljava/lang/Boolean;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    move v6, v3

    move-object v7, v4

    move-object v3, v7

    move v4, v6

    move-object v5, v7

    move v6, v4

    move-object v7, v5

    move-object v4, v7

    move v5, v6

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/Boolean;)V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const-string v3, "Connected successfully!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
