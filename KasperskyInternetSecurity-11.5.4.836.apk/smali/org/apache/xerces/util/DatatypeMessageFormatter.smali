.class public Lorg/apache/xerces/util/DatatypeMessageFormatter;
.super Ljava/lang/Object;


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "org.apache.xerces.impl.msg.DatatypeMessages"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "org.apache.xerces.impl.msg.DatatypeMessages"

    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_5

    array-length v0, p2

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-lt v0, v2, :cond_3

    :cond_1
    :goto_3
    return-object p1

    :cond_2
    const-string v0, "org.apache.xerces.impl.msg.DatatypeMessages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "FormatFailed"

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "BadMessageKey"

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/MissingResourceException;

    invoke-direct {v1, p1, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_3
    if-lez v0, :cond_4

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object p1, v0

    goto :goto_3
.end method
