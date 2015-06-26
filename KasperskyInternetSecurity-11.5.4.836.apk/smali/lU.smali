.class public final LlU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 96
    const/4 v7, 0x0

    .line 98
    :try_start_0
    sget-object v2, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "body"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object/from16 v19, v1

    .line 109
    :goto_0
    if-eqz v19, :cond_3

    .line 111
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    const/4 v1, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 117
    invoke-static {}, LuR;->a()LuR;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-virtual {v1, v2, v7}, LuR;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    new-instance v1, LqB;

    const/4 v2, 0x2

    const v3, 0x7f020092

    const v4, 0x7f020092

    invoke-direct/range {v1 .. v9}, LqB;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->a(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->a(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 146
    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    new-instance v2, LlV;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, LlV;-><init>(LlU;)V

    invoke-virtual {v1, v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void

    :catch_0
    move-exception v1

    move-object/from16 v19, v7

    goto :goto_0

    .line 130
    :cond_4
    :try_start_2
    new-instance v10, LqB;

    const/4 v11, 0x2

    const v12, 0x7f020092

    const v13, 0x7f020092

    const-string v16, ""

    move-object v14, v7

    move-object v15, v6

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v18}, LqB;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v10

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v1
.end method
