.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;
.super Landroid/content/BroadcastReceiver;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

.field private final val$dProccess:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/app/ProgressDialog;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->val$dProccess:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 826
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000018(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v15

    move-object v5, v15

    .line 827
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v15

    .line 828
    move-object v15, v5

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v7, v15

    .line 835
    :goto_0
    move-object v15, v7

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 837
    move-object v15, v6

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$S1000015(Ljava/util/List;)V

    .line 839
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v15

    .line 840
    move-object v15, v6

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v11, v15

    .line 852
    :goto_1
    move-object v15, v11

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 855
    new-instance v15, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v18, v9

    const v19, 0x7f030005

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x0

    const-string v23, "ESSID"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x1

    const-string v23, "BSSID"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x2

    const-string v23, "KEY"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x3

    const-string v23, "WPS"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x4

    const-string v23, "SIGNAL"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x5

    const-string v23, "KEYSCOUNT"

    aput-object v23, v21, v22

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const/16 v22, 0x6

    const-string v23, "CAPABILITY"

    aput-object v23, v21, v22

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-direct/range {v16 .. v21}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$S1000021(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)V

    .line 858
    sget-object v15, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    invoke-static {}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000021()Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 860
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$S1000016(Z)V

    .line 861
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000011(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    .line 862
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000012(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    .line 864
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-virtual {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "Scan is complete!"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    move-object v13, v15

    .line 866
    move-object v15, v13

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 868
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lcom/example/WiFiPasswordSearcher/MyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 869
    const/4 v15, 0x0

    check-cast v15, Landroid/content/BroadcastReceiver;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$S1000017(Landroid/content/BroadcastReceiver;)V

    .line 870
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->val$dProccess:Landroid/app/ProgressDialog;

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    .line 828
    :cond_0
    move-object v15, v7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    move-object v9, v15

    .line 829
    new-instance v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    invoke-direct/range {v16 .. v16}, Lcom/example/WiFiPasswordSearcher/MyScanResult;-><init>()V

    move-object v10, v15

    .line 830
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    .line 831
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;->SSID:Ljava/lang/String;

    .line 832
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;->level:I

    .line 833
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;->frequency:I

    .line 834
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;->capabilities:Ljava/lang/String;

    .line 835
    move-object v15, v6

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_0

    .line 840
    :cond_1
    move-object v15, v11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/example/WiFiPasswordSearcher/MyScanResult;

    move-object v13, v15

    .line 843
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object v10, v15

    .line 844
    move-object v15, v10

    const-string v16, "ESSID"

    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 845
    move-object v15, v10

    const-string v16, "BSSID"

    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 846
    move-object v15, v10

    const-string v16, "KEY"

    const-string v17, "*[color:gray]*[no data]"

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 847
    move-object v15, v10

    const-string v16, "WPS"

    const-string v17, "*[color:gray]*[no data]"

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 848
    move-object v15, v10

    const-string v16, "SIGNAL"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->level:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$1000044(Lcom/example/WiFiPasswordSearcher/MyActivity;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 849
    move-object v15, v10

    const-string v16, "KEYSCOUNT"

    const-string v17, "*[color:gray]*0"

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 850
    move-object v15, v10

    const-string v16, "CAPABILITY"

    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 852
    move-object v15, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_1

    .line 855
    :array_0
    .array-data 4
        0x7f070013
        0x7f070012
        0x7f070017
        0x7f070018
        0x7f070014
        0x7f070019
    .end array-data
.end method
