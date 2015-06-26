.class public Lcom/kms/kmsshared/KMSLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/kms/kmsshared/KMSLog$Level;

.field private static volatile b:LrO;

.field private static synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/kms/kmsshared/KMSLog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kms/kmsshared/KMSLog;->c:Z

    .line 34
    sget-object v0, Lcom/kms/kmsshared/KMSLog$Level;->VERBOSE:Lcom/kms/kmsshared/KMSLog$Level;

    sput-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    .line 35
    new-instance v0, LrN;

    invoke-direct {v0}, LrN;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    if-nez p0, :cond_0

    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 114
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public static a(Lcom/kms/kmsshared/KMSLog$Level;)V
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const-string v0, "KMS"

    invoke-static {v0, p0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    iget v0, v0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->DEBUG:Lcom/kms/kmsshared/KMSLog$Level;

    iget v1, v1, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    invoke-interface {v0, p0, p1}, LrO;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    iget v0, v0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    iget v1, v1, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    if-gt v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, LrO;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "KMS"

    invoke-static {v0, p0}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    iget v0, v0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->INFO:Lcom/kms/kmsshared/KMSLog$Level;

    iget v1, v1, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    if-gt v0, v1, :cond_0

    .line 76
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    invoke-interface {v0, p0, p1}, LrO;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    iget v0, v0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->WARN:Lcom/kms/kmsshared/KMSLog$Level;

    iget v1, v1, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    if-gt v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    invoke-interface {v0, p0, p1}, LrO;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->a:Lcom/kms/kmsshared/KMSLog$Level;

    iget v0, v0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    iget v1, v1, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    if-gt v0, v1, :cond_0

    .line 100
    sget-object v0, Lcom/kms/kmsshared/KMSLog;->b:LrO;

    invoke-interface {v0, p0, p1}, LrO;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
