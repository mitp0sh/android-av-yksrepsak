.class public final LlS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kms/antispam/gui/CallListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/CallListActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 131
    iget-object v0, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/CallListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "name"

    aput-object v3, v2, v9

    const-string v3, "numberlabel"

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const-string v4, "numbertype"

    aput-object v4, v2, v3

    const-string v3, "date"

    aput-object v3, v2, v5

    const-string v3, "type"

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "new"

    aput-object v4, v2, v3

    const-string v3, "number"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 144
    if-eqz v10, :cond_3

    .line 146
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v8

    .line 150
    :goto_0
    const v2, 0x7f020032

    .line 151
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 152
    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_1
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 163
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-static {v5}, Lcom/kms/kmsshared/Utils;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    const v1, 0x7f0702a6

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/CallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v0, Lql;

    const/4 v1, 0x1

    const-string v5, "-2"

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lql;-><init>(IIILjava/lang/String;Ljava/lang/String;J)V

    .line 183
    :goto_2
    iget-object v1, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/CallListActivity;->a(Lcom/kms/antispam/gui/CallListActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/CallListActivity;->a(Lcom/kms/antispam/gui/CallListActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_3
    iget-object v0, p0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    new-instance v1, LlT;

    invoke-direct {v1, p0}, LlT;-><init>(LlS;)V

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/CallListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void

    :cond_4
    move v1, v9

    .line 149
    goto :goto_0

    .line 154
    :pswitch_0
    const v2, 0x7f020033

    .line 155
    goto :goto_1

    .line 158
    :pswitch_1
    const v2, 0x7f020034

    goto :goto_1

    .line 176
    :cond_5
    :try_start_1
    new-instance v0, Lql;

    if-ne v1, v8, :cond_6

    :goto_3
    move v3, v2

    invoke-direct/range {v0 .. v7}, Lql;-><init>(IIILjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 191
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    move-object v4, v5

    .line 176
    goto :goto_3

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
