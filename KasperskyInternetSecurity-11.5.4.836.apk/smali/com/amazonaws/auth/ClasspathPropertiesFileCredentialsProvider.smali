.class public Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;
.super Ljava/lang/Object;
.source "ClasspathPropertiesFileCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static DEFAULT_PROPERTIES_FILE:Ljava/lang/String;


# instance fields
.field private final credentialsFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "AwsCredentials.properties"

    sput-object v0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->DEFAULT_PROPERTIES_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->DEFAULT_PROPERTIES_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "credentialsFilePath"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 81
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load AWS credentials from the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file on the classpath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    :try_start_0
    new-instance v2, Lcom/amazonaws/auth/PropertiesCredentials;

    invoke-direct {v2, v1}, Lcom/amazonaws/auth/PropertiesCredentials;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load AWS credentials from the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file on the classpath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;->credentialsFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
