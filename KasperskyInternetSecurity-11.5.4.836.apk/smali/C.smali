.class public final LC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LC;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/SortedMap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, LC;->a:Landroid/content/Context;

    invoke-static {v0}, LE;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 125
    :goto_0
    return-object v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 112
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final a(Lcom/kaspersky/components/ipm/ContentReference;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LT;->a(Ljava/io/File;)Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kaspersky/components/ipm/ContentReference;->setNews(Lcom/kaspersky/componenets/ipm/xml/NewsType;)V

    .line 94
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->getGoogleAnalyticsSettings()Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kaspersky/components/ipm/ContentReference;->setGaSettings(Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;)V

    .line 95
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->getWebSurveySettings()Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kaspersky/components/ipm/ContentReference;->setWebSurveySettings(Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;)V

    .line 96
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;->getGooglePlaySettings()Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaspersky/components/ipm/ContentReference;->setGpSettings(Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, LC;->a:Landroid/content/Context;

    invoke-static {v0}, LE;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 76
    invoke-interface {v1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/util/SortedMap;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, LC;->a:Landroid/content/Context;

    invoke-static {v0}, LE;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    invoke-interface {v1, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public final b()Ljava/util/Collection;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, LC;->a:Landroid/content/Context;

    invoke-static {v0}, LE;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 60
    :goto_0
    return-object v0

    .line 40
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    invoke-interface {v4}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 48
    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 49
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 55
    :cond_1
    :try_start_2
    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :try_start_4
    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V

    :goto_2
    move-object v0, v1

    .line 60
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 59
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
