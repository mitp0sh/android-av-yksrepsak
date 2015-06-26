.class public final LbD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, LbD;->a:I

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v0, "Wipe"

    const-string v1, "Trying to delete data on primary sdcard. Checking the sdcard\'s state..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v3}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "Wipe"

    const-string v2, "sdcard is not accessible for writing. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {v0, v3}, LbD;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "com.android.contacts"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 91
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 92
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->clearPassword(Landroid/accounts/Account;)V

    .line 93
    invoke-virtual {v1, v4, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 184
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_1

    .line 187
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 188
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, LbD;->a(Ljava/lang/String;Z)V

    .line 191
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 197
    :cond_2
    return-void
.end method

.method public static b(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static c(Landroid/content/ContentResolver;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 106
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 113
    const-string v2, "content://telephony/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static d(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public static e(Landroid/content/ContentResolver;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 139
    sget v0, LbD;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 140
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v10

    .line 141
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 144
    const-string v0, "calendar_id=?"

    move-object v6, v0

    move-object v7, v1

    move-object v1, v3

    move-object v3, v4

    .line 155
    :goto_0
    const-string v0, "Wipe"

    const-string v5, "Wiping starts ..."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v5, v4

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    if-nez v1, :cond_3

    .line 181
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    sget v0, LbD;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 146
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v10

    .line 147
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 148
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    const-string v3, "selected=1"

    .line 150
    const-string v0, "calendar_id=?"

    move-object v6, v0

    move-object v7, v1

    move-object v1, v5

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support Android below API 8!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 166
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [I

    move v0, v8

    .line 167
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 168
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    .line 169
    const-string v3, "Wipe"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calendar id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    array-length v1, v2

    move v0, v8

    :goto_3
    if-ge v0, v1, :cond_0

    aget v3, v2, v0

    .line 177
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {p0, v7, v6, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 179
    const-string v4, "Wipe"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Rows deleted: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
