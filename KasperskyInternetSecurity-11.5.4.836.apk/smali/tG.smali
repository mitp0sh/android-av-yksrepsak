.class public final LtG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:LaD;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, LtG;->a:Ljava/lang/String;

    .line 25
    iput-object v0, p0, LtG;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, LtG;->c:LaD;

    .line 27
    iput-object v0, p0, LtG;->d:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, LtG;->e()V

    .line 95
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/io/File;

    const-string v2, "ticket.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-static {v1, p0}, Ly;->b(Ljava/io/File;Lz;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LtG;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;)V
    .locals 9

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 128
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 134
    new-instance v3, Lcom/kms/licensing/activation2/KssTicketData;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v5, v6}, Lcom/kms/licensing/activation2/KssTicketData;-><init>(Lorg/json/JSONObject;J)V

    .line 136
    new-instance v7, Lcom/kms/licensing/activation2/KssTicketData;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v5, v6}, Lcom/kms/licensing/activation2/KssTicketData;-><init>(Lorg/json/JSONObject;J)V

    .line 139
    new-instance v5, LaD;

    invoke-virtual {v3}, Lcom/kms/licensing/activation2/KssTicketData;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7}, Lcom/kms/licensing/activation2/KssTicketData;->b()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v3, v6}, LaD;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 142
    invoke-virtual {v7}, Lcom/kms/licensing/activation2/KssTicketData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, LaD;->a()LaN;

    move-result-object v6

    iget-object v6, v6, LaN;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iput-object v5, p0, LtG;->c:LaD;

    .line 144
    iput-object v0, p0, LtG;->a:Ljava/lang/String;

    .line 145
    iput-object v1, p0, LtG;->b:Ljava/lang/String;

    .line 146
    iput-object v2, p0, LtG;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    if-eqz v1, :cond_2

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    :cond_2
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_3
    move-exception v0

    move-object v4, v1

    .line 151
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    if-eqz v4, :cond_3

    .line 159
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    :cond_3
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 165
    :catch_4
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 152
    :catch_5
    move-exception v0

    move-object v4, v1

    .line 153
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 158
    if-eqz v4, :cond_4

    .line 159
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    :cond_4
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 165
    :catch_6
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 154
    :catch_7
    move-exception v0

    move-object v4, v1

    .line 155
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 158
    if-eqz v4, :cond_5

    .line 159
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    :cond_5
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_0

    .line 165
    :catch_8
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    move-object v4, v1

    .line 158
    :goto_5
    if-eqz v4, :cond_6

    .line 159
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 162
    :cond_6
    if-eqz p1, :cond_7

    .line 163
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 167
    :cond_7
    :goto_6
    throw v0

    .line 165
    :catch_9
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 157
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_5

    .line 154
    :catch_a
    move-exception v0

    goto :goto_4

    .line 152
    :catch_b
    move-exception v0

    goto :goto_3

    .line 150
    :catch_c
    move-exception v0

    goto :goto_2

    .line 148
    :catch_d
    move-exception v0

    move-object v1, v4

    goto :goto_1
.end method

.method public final a(Ljava/io/FileOutputStream;)V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    iget-object v1, p0, LtG;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, LtG;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, LtG;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    iget-wide v1, p0, LtG;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 115
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 116
    return-void
.end method

.method public final a(LtB;LtB;Ljava/lang/String;J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-interface {p1}, LtB;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LtG;->a:Ljava/lang/String;

    .line 47
    invoke-interface {p2}, LtB;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LtG;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, LtG;->d:Ljava/lang/String;

    .line 49
    iput-wide p4, p0, LtG;->e:J

    .line 51
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/io/File;

    const-string v2, "ticket.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-static {v1, p0}, Ly;->a(Ljava/io/File;Lz;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LtG;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()LaD;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LtG;->c:LaD;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LtG;->d:Ljava/lang/String;

    return-object v0
.end method
