.class Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;
.super Landroid/os/AsyncTask;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "AsyncWpsUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private pd:Landroid/app/ProgressDialog;

.field private final this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/example/WiFiPasswordSearcher/UserInfoActivity;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;)Lcom/example/WiFiPasswordSearcher/UserInfoActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v3, v9

    .line 119
    new-instance v9, Lorg/apache/http/impl/client/BasicResponseHandler;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    move-object v4, v9

    .line 121
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v12, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->SERVER_URI:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "/wpspin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 122
    const-string v9, ""

    move-object v6, v9

    .line 125
    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    :try_start_0
    invoke-virtual {v9, v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 129
    :goto_0
    move-object v9, v6

    move-object v0, v9

    return-object v0

    .line 125
    :catch_0
    move-exception v9

    move-object v7, v9

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 12
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
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    move-object v7, v1

    const-string v8, "initAlgos();"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    new-instance v7, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object v4, v7

    .line 141
    move-object v7, v4

    move-object v8, v1

    new-instance v9, Ljava/util/Date;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionUpdate(Ljava/lang/String;Ljava/util/Date;)V

    .line 142
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtRegDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtGroup:Landroid/widget/TextView;

    move-object v8, v4

    move-object v9, v4

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetSize()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/example/WiFiPasswordSearcher/AppVersion;->readableFileSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    const v8, 0x7f070037

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object v5, v7

    .line 145
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInternal()Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    const-string v7, "Update successful!"

    move-object v3, v7

    .line 156
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v3

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return-void

    .line 145
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 148
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_2

    .line 150
    const-string v7, "No internet connection"

    move-object v3, v7

    goto :goto_1

    .line 154
    :cond_2
    const-string v7, "Update failed"

    move-object v3, v7

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 109
    move-object v2, v0

    new-instance v3, Landroid/app/ProgressDialog;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->this$0:Lcom/example/WiFiPasswordSearcher/UserInfoActivity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    const-string v3, "Updating component..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
