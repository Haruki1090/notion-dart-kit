# Automated Release Workflow

This repository includes automated release workflows to streamline version bumping and publishing.

## Available Workflows

### 1. Auto Patch Release on Merge (Automatic)
**File**: `.github/workflows/auto-patch-release.yml`

**Trigger**: Automatically runs when code is merged to `main` branch

**Behavior**:
- Automatically bumps the **patch version** (0.0.X)
- Updates `pubspec.yaml` and `CHANGELOG.md`
- Creates a git tag (e.g., `v0.2.4`)
- Creates a GitHub release with auto-generated notes
- Publishes to pub.dev

**Example**:
```
Current version: 0.2.3
After merge to main → 0.2.4
```

**Skip Auto-Release**:
Add `[skip-release]` to your commit message to skip automatic release:
```bash
git commit -m "docs: update README [skip-release]"
```

### 2. Manual Release with Version Type (Manual)
**File**: `.github/workflows/auto-release.yml`

**Trigger**: Manual workflow dispatch via GitHub Actions UI

**Behavior**:
- Allows you to choose version bump type:
  - `patch`: 0.0.X (e.g., 0.2.3 → 0.2.4)
  - `minor`: 0.X.0 (e.g., 0.2.3 → 0.3.0)
  - `major`: X.0.0 (e.g., 0.2.3 → 1.0.0)
- Updates `pubspec.yaml` and `CHANGELOG.md`
- Creates a git tag
- Creates a GitHub release
- Publishes to pub.dev

**How to Use**:
1. Go to GitHub Actions tab
2. Select "Auto Release" workflow
3. Click "Run workflow"
4. Choose version type (patch/minor/major)
5. Click "Run workflow" button

## Setup Requirements

### GitHub Secrets

You need to set up the following secret in your repository:

1. **PUB_CREDENTIALS**: Your pub.dev credentials
   - Get credentials: `dart pub token add https://pub.dev`
   - This creates `~/.pub-cache/credentials.json`
   - Copy the entire JSON content
   - Add as a repository secret named `PUB_CREDENTIALS`

### Setting Up Secrets

1. Go to your repository on GitHub
2. Click Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Name: `PUB_CREDENTIALS`
5. Value: Paste the JSON content from `~/.pub-cache/credentials.json`

Example credentials format:
```json
{
  "accessToken": "your-token",
  "refreshToken": "your-refresh-token",
  "tokenEndpoint": "https://accounts.google.com/o/oauth2/token",
  "scopes": ["openid", "https://www.googleapis.com/auth/userinfo.email"],
  "expiration": 1234567890000
}
```

## Workflow Examples

### Example 1: Regular Feature Development (Automatic Patch)
```bash
# Develop feature
git checkout -b feat/new-feature
# ... make changes ...
git commit -m "feat: add new feature"
git push

# Create and merge PR
gh pr create --title "feat: add new feature"
gh pr merge --squash

# ✅ Automatic: Version bumps from 0.2.3 → 0.2.4, releases, and publishes
```

### Example 2: Minor Version Bump (Manual)
```bash
# After merging multiple features, you want to bump minor version
# Go to GitHub Actions → Auto Release → Run workflow
# Select "minor" → 0.2.4 becomes 0.3.0
```

### Example 3: Major Version Bump (Manual)
```bash
# Breaking changes ready for major release
# Go to GitHub Actions → Auto Release → Run workflow
# Select "major" → 0.3.0 becomes 1.0.0
```

### Example 4: Documentation Update (Skip Release)
```bash
# Update docs without triggering release
git commit -m "docs: improve setup guide [skip-release]"
git push origin main

# ✅ No release triggered
```

## Workflow Flowchart

```mermaid
graph TD
    A[Code Merged to Main] --> B{Contains [skip-release]?}
    B -->|Yes| C[Skip Release]
    B -->|No| D[Auto Patch Release]
    D --> E[Bump Patch Version]
    E --> F[Update Files]
    F --> G[Run Tests]
    G --> H[Create Tag & Release]
    H --> I[Publish to pub.dev]

    J[Manual Workflow Trigger] --> K{Select Version Type}
    K -->|Patch| L[Bump 0.0.X]
    K -->|Minor| M[Bump 0.X.0]
    K -->|Major| N[Bump X.0.0]
    L --> F
    M --> F
    N --> F
```

## Best Practices

1. **Use Automatic Releases for Regular Merges**
   - Let the auto-patch workflow handle routine releases
   - Keeps versioning consistent and automated

2. **Use Manual Releases for Significant Changes**
   - Minor version: New features, enhancements
   - Major version: Breaking changes, major rewrites

3. **Use [skip-release] for Documentation**
   - Documentation updates
   - README changes
   - CI/CD workflow updates

4. **Version Strategy**
   - Patch (0.0.X): Bug fixes, minor improvements, documentation
   - Minor (0.X.0): New features, enhancements, non-breaking API additions
   - Major (X.0.0): Breaking changes, major API redesigns

## Troubleshooting

### Release Failed to Publish to pub.dev
- Check that `PUB_CREDENTIALS` secret is set correctly
- Verify credentials are not expired
- Regenerate token: `dart pub token add https://pub.dev`

### Version Tag Already Exists
- The auto-patch workflow will bump to the next available version
- If manual release fails, check existing tags with `git tag -l`

### Tests Failed During Release
- Release will not proceed if tests fail
- Fix the tests and the workflow will automatically retry on next merge

### Release Created but Not Published
- Check the "Publish to pub.dev" step logs
- Verify package validation passes: `dart pub publish --dry-run`

## Manual Release (Old Way)

If you prefer manual releases, you can still follow these steps:

```bash
# 1. Update version in pubspec.yaml
sed -i 's/version: 0.2.3/version: 0.2.4/' pubspec.yaml

# 2. Update CHANGELOG.md
# Add new version entry manually

# 3. Commit and push
git add pubspec.yaml CHANGELOG.md
git commit -m "chore: bump version to 0.2.4"
git push

# 4. Create and push tag
git tag v0.2.4
git push origin v0.2.4

# 5. Create GitHub release
gh release create v0.2.4 --title "v0.2.4" --generate-notes

# 6. Publish to pub.dev
dart pub publish
```
